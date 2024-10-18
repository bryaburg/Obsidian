
2024-10-17 11:26

Status:

Tags:

[[Cisco]]

# An Introduction to Nornir Automation Framework

## What is Nornir?

Nornir is a pluggable, multithreaded framework with inventory management to help operate collections of devices. If you have experience with web application development, you can think of Nornir as similar to Flask, in that the core code does not have many fancy features but is rather extended by plug-ins that you import to use for specific use cases.

Ansible vs. Nornir

You can think of Nornir as an all-Python equivalent of Ansible for network engineers. It uses similar terminology (tasks and inventory), and instead of using Ansible modules to execute tasks (like send configuration commands or show commands), you will use plug-ins. Nornir uses a Python file with functions with parameters and import statements, while Ansible uses a YAML playbook that lists out tasks with a lot of the details hidden behind the scenes. One thing to note is that [Nornir can be much faster than Ansible](https://networklore.com/ansible-nornir-speed/), especially when scaling to thousands or tens of thousands of hosts.

Apart from speed, one of the other main benefits of using Nornir is that debugging Python code is much easier than debugging an Ansible playbook. For example, you can insert [pdb](https://docs.python.org/3/library/pdb.html) in Python that allow you to inspect values and review code as it executes. In contrast, Ansible has some basic [troubleshooting options](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_debugger.html), but there are so many moving parts going on when a playbook runs that there is a lot of noise in the output and it is hard to parse out where the problems might be. That does not mean that Nornir is better or worse than Ansible, or vice versa; they are simply designed for different audiences and have different trade-offs.

Nornir Plug-Ins

As of version 3, Nornir does not include many plug-ins. The built-in [Nornir plug-ins](https://nornir.readthedocs.io/en/latest/plugins/#) are:

- Inventory plug-ins
    
- Connection plug-ins
    
- Transform
    
- Runners
    

You will have to `pip install` other plug-ins as needed. The list of third-party plug-ins can be found on the [Nornir documentation page](https://nornir.tech/nornir/plugins/). Some notable plug-ins from other network automation projects that you may recognize are:

- Netmiko
    
- NAPALM
    
- NetBox
    
- Jinja2
    

Installing Nornir

To install Nornir, you use `pip install nornir`, and then you will need to `pip install` [other plug-ins](https://nornir.tech/nornir/plugins/) based on what you plan to do, such as `pip install nornir_netmiko` to use the Netmiko plug-in to connect to network devices.

Why use Nornir instead of just using straight Netmiko by itself? If you have spent time with Netmiko, you will notice that it has no opinion or particular features about how you manage your list of devices or how you sequence your scripts. Eventually, you will write your own helper Python code to handle things like printing output, sending commands concurrently in threads, managing your list of devices, or importing data from a source of truth like NetBox. Nornir provides a helpful framework to not reinvent the wheel and use Netmiko in a scalable and organized way.

## Setting up a Nornir Inventory & Config File 

A Nornir inventory can have:

- Hosts (the devices you are working with)
    
- Groups (organizing the devices to work on them together; especially helpful for having common variables across multiple devices)
    
- Defaults (setting the default variables across all variables; think of something like Ansible's `group_vars` default baseline set in `all.yaml`)
    

Each one of these is a separate file (or can be imported from a source of truth), such as `hosts.yaml`, `groups.yaml`, or `defaults.yaml`. They would live in the `inventory` directory in a simple demo environment. Even though we are using YAML in this example, you can also import them from a dynamic inventory like a source-of-truth database.

What does an inventory `host` look like? It is composed of a predefined structure (schema) expecting certain values like `hostname` or `username` and `password`, as well as a free-form section called `data` that can have any types of variables you want to associate with a device.

For this lab, create a directory called `inventory` and then three files in it for `hosts.yaml`, `groups.yaml`, and `defaults.yaml`.

Put the following in your `inventory/hosts.yaml` file for the Cisco Modeling Labs DevNet Sandbox devices:

dist-rtr01:
  hostname: "10.10.20.175"
  port: 23
  username: "cisco"
  password: "cisco"
  platform: "cisco_ios"
  groups:
      - "routers"
  data:
      production: False
      place_in_network: "backbone_core"
dist-rtr02:
  hostname: "10.10.20.176"
  port: 23
  username: "cisco"
  password: "cisco"
  platform: "cisco_ios"
  groups:
      - "routers"
  data:
      production: False
      place_in_network: "backbone_core"

Notice that it has two devices and defines both using the schema and within the free-form `data` field.

Put the following in your `inventory/groups.yaml` file (note that the group names are the same as the ones named in the `hosts.yaml` file):

---
routers:
  connection_options:
    netmiko:
      platform: "cisco_ios_telnet"
  data:
    location: "rtp"

**Note**: We are going to use Netmiko in the next step, so we added the `connection_options` here to tell Netmiko which platform to use—in this case, Cisco IOS Telnet.

Put the following in your `inventory/defaults.yaml` file:

---
port: 23
username: "cisco"
password: "cisco"
data:
  owner: "lab_team"
  contacts:
    - "Jason"
    - "Kareem"
    - "Tony"

The `username`, `password`, and `port` are already defined in the `hosts.yaml` file, so they don't need to be here in the `defaults.yaml`, but I am showing that it is possible.

Now you have a simple inventory for two devices, two groups, and a few defaults.

Inventory Structure (Schema)

If you are curious about all the available built-in options within the inventory, you can view it by inspecting the schema using the following code snippets in the Python interactive shell:

>>> from nornir.core.inventory import Host
>>> import json
>>>
>>> print(json.dumps(Host.schema(), indent=4))
{
    "name": "str",
    "connection_options": {
        "$connection_type": {
            "extras": {
                "$key": "$value"
            },
            "hostname": "str",
            "port": "int",
            "username": "str",
            "password": "str",
            "platform": "str"
        }
    },
    "groups": [
        "$group_name"
    ],
    "data": {
        "$key": "$value"
    },
    "hostname": "str",
    "port": "int",
    "username": "str",
    "password": "str",
    "platform": "str"
}
>>> from nornir.core.inventory import Group
>>>
>>> print(json.dumps(Group.schema(), indent=4))
{
    "name": "str",
    "connection_options": {
        "$connection_type": {
            "extras": {
                "$key": "$value"
            },
            "hostname": "str",
            "port": "int",
            "username": "str",
            "password": "str",
            "platform": "str"
        }
    },
    "groups": [
        "$group_name"
    ],
    "data": {
        "$key": "$value"
    },
    "hostname": "str",
    "port": "int",
    "username": "str",
    "password": "str",
    "platform": "str"
}
>>>
>>> from nornir.core.inventory import Defaults
>>>
>>> print(json.dumps(Defaults.schema(), indent=4))
{
    "data": {
        "$key": "$value"
    },
    "connection_options": {
        "$connection_type": {
            "extras": {
                "$key": "$value"
            },
            "hostname": "str",
            "port": "int",
            "username": "str",
            "password": "str",
            "platform": "str"
        }
    },
    "hostname": "str",
    "port": "int",
    "username": "str",
    "password": "str",
    "platform": "str"
}
>>>

Nornir Config File

When Nornir starts, it needs to know where the inventory files are located and other settings you may want to configure. These are stored in a `config.yaml` file, which is similar in function to what Ansible uses the `ansible.cfg` file for. Create a file called `config.yaml` in your current working directory (**not** in the `inventory` subdirectory), and put the following in it:

---
inventory:
  plugin: YAMLInventory
  options:
    host_file: "./inventory/hosts.yaml"
    group_file: "./inventory/groups.yaml"
    defaults_file: "./inventory/defaults.yaml"

runner:
  plugin: threaded
  options:
    num_workers: 15

Notice that we define the inventory plug-in used (YAML in this case), and there are other ways of defining your inventory (for example, [CSV](https://github.com/matman26/nornir_csv)).

## Running Tasks and Connecting to Devices

Now that you have an inventory and a config file, you are ready to start sending commands to devices. As of Nornir version 3, Netmiko and other plug-ins are not included, so make sure you have not just Nornir installed but the Netmiko plug-in as well:

$ pip freeze | grep netm
netmiko==4.1.2
nornir-netmiko==0.2.0
$

Create a file called `send-commands-netmiko.py` with the following contents:

from nornir import InitNornir
from nornir_utils.plugins.functions import print_result
from nornir_netmiko import netmiko_send_command

if __name__ == "__main__":
    nr = InitNornir(config_file="config.yaml")
    result = nr.run(task=netmiko_send_command, command_string="show version")
    print_result(result)

In that file, you are doing a few things:

- Initializing Nornir with the `InitNornir` statement pointing to your config file, which then points to your inventory directory
    
- Creating an object called `nr` that you then use to run tasks (think of `nr` as your playbook object)
    
- Running a task against all the devices in your inventory with the `netmiko_send_command` function, with the input of `show version`
    
- Printing the result using the built-in `print_result` function because it helps unpack the objects for you to make a pretty-print screen
    

Run the script and view the output (output is truncated below to save space):

$ python send-commands-netmiko.py
netmiko_send_command************************************************************
* dist-rtr01 ** changed : False ************************************************
vvvv netmiko_send_command ** changed : False vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv INFO
Cisco IOS XE Software, Version 17.03.02
Cisco IOS Software [Amsterdam], Virtual XE Software (X86_64_LINUX_IOSD-UNIVERSALK9-M), Version 17.3.2, RELEASE SOFTWARE (fc3)
Technical Support: http://www.cisco.com/techsupport
Copyright (c) 1986-2020 by Cisco Systems, Inc.
Compiled Sat 31-Oct-20 13:16 by mcpre
...
^^^^ END netmiko_send_command ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* dist-rtr02 ** changed : False ************************************************
vvvv netmiko_send_command ** changed : False vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv INFO
Cisco IOS XE Software, Version 17.03.02
Cisco IOS Software [Amsterdam], Virtual XE Software (X86_64_LINUX_IOSD-UNIVERSALK9-M), Version 17.3.2, RELEASE SOFTWARE (fc3)
Technical Support: http://www.cisco.com/techsupport
Copyright (c) 1986-2020 by Cisco Systems, Inc.
Compiled Sat 31-Oct-20 13:16 by mcpre
....
^^^^ END netmiko_send_command ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Now try adding a second task to the same file and re-running it, this time sending `show ip interface brief`:

from nornir import InitNornir
from nornir_utils.plugins.functions import print_result
from nornir_netmiko import netmiko_send_command

if __name__ == "__main__":
    nr = InitNornir(config_file="config.yaml")
    result = nr.run(task=netmiko_send_command, command_string="show version")
    print_result(result)
    result = nr.run(task=netmiko_send_command, command_string="show ip interface brief")
    print_result(result)

Your output should look like this:

$ python send-commands-netmiko.py
netmiko_send_command************************************************************
* dist-rtr01 ** changed : False ************************************************
vvvv netmiko_send_command ** changed : False vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv INFO
Cisco IOS XE Software, Version 17.03.02
Cisco IOS Software [Amsterdam], Virtual XE Software (X86_64_LINUX_IOSD-UNIVERSALK9-M), Version 17.3.2, RELEASE SOFTWARE (fc3)
Technical Support: http://www.cisco.com/techsupport
Copyright (c) 1986-2020 by Cisco Systems, Inc.
Compiled Sat 31-Oct-20 13:16 by mcpre

....
^^^^ END netmiko_send_command ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* dist-rtr02 ** changed : False ************************************************
vvvv netmiko_send_command ** changed : False vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv INFO
Cisco IOS XE Software, Version 17.03.02
Cisco IOS Software [Amsterdam], Virtual XE Software (X86_64_LINUX_IOSD-UNIVERSALK9-M), Version 17.3.2, RELEASE SOFTWARE (fc3)
Technical Support: http://www.cisco.com/techsupport
Copyright (c) 1986-2020 by Cisco Systems, Inc.
Compiled Sat 31-Oct-20 13:16 by mcpre

....
^^^^ END netmiko_send_command ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
netmiko_send_command************************************************************
* dist-rtr01 ** changed : False ************************************************
vvvv netmiko_send_command ** changed : False vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv INFO
Interface              IP-Address      OK? Method Status                Protocol
GigabitEthernet1       10.10.20.175    YES TFTP   up                    up
GigabitEthernet2       172.16.252.21   YES TFTP   up                    up
GigabitEthernet3       172.16.252.25   YES TFTP   up                    up
GigabitEthernet4       172.16.252.2    YES TFTP   up                    up
GigabitEthernet5       172.16.252.10   YES TFTP   up                    up
GigabitEthernet6       172.16.252.17   YES TFTP   up                    up
Loopback0              unassigned      YES unset  administratively down down
^^^^ END netmiko_send_command ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* dist-rtr02 ** changed : False ************************************************
vvvv netmiko_send_command ** changed : False vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv INFO
Interface              IP-Address      OK? Method Status                Protocol
GigabitEthernet1       10.10.20.176    YES TFTP   up                    up
GigabitEthernet2       172.16.252.29   YES TFTP   up                    up
GigabitEthernet3       172.16.252.33   YES TFTP   up                    up
GigabitEthernet4       172.16.252.6    YES TFTP   up                    up
GigabitEthernet5       172.16.252.14   YES TFTP   up                    up
GigabitEthernet6       172.16.252.18   YES TFTP   up                    up
Loopback0              unassigned      YES unset  administratively down down
^^^^ END netmiko_send_command ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
(the-u) nornir$

Next Steps

This is just the tip of the iceberg of what Nornir can do. Check out the [documentation](https://nornir.readthedocs.io/en/latest/), [related utilities](https://github.com/nornir-automation/nornir_utils), and the different [DevNet Code Exchange Nornir repositories](https://developer.cisco.com/codeexchange/explore/#search=nornir).
# Reference
