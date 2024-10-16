
2024-10-16 13:30

Status:

Tags:

[[Cisco]]
[[Git]]

# Git for Network Engineers - The Basics

## What is Git

- Git is a version control system, or VCS. Version control systems record changes to files over time, giving you the ability to recall previous revisions and see the history of changes to the files.
- **Reference:** https://git-scm.com/book/en/v2/Getting-Started-A-Short-History-of-Git

## How Git Works

- Git uses a snapshot method to track changes instead of a delta-based method. Every time you commit in Git, it basically takes a snapshot of those files that have been changed while simply linking unchanged files to a previous snapshot, efficiently storing the history of the files.
- It is important to note (and this will become clearer as you use Git) that Git has three main states for a file:
	- **Modified:** File has changes but is not committed yet.
	- **Staged:** File has been marked to be in the next commit snapshot.
	- **Committed:** File has been safely snapshotted.
- **Reference:** https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F 

## Configuration :: git config

- The `git config` command allows the setting and getting of configuration options systemwide, global for the user, or at the repository level.
- Git, we need to set our `user.name` and `user.email`. These are used when we commit and will become much more important when working with remote repositories.
```
MacOS $ git config --global user.name "Tony Roman"
MacOS $ git config --global user.email "tonyroman@example.com"
MacOS $ git config --global --list
user.name=Tony Roman
user.email=tonyroman@example.com
MacOS $
```
- Another configuration option worth using to align with some community changes around naming conventions is setting the default branch to `main` instead of `master`.
- Let's set the `init.defaultBranch` to `main` so that when we create a Git repository, the default branch is correctly named `main`:
```
MacOS $ git config --global init.defaultBranch main
MacOS $ git config --global --list
user.name=Tony Roman
user.email=tonyroman@example.com
init.defaultbranch=main
MacOS $
```

## Creating a Repository :: git init

- The `git init` command is used to create a Git repository either in the current directory or a directory name passed as the first argument to the command.
- Create a Repository
- Let's create a Git repository named `git-series`:
```
MacOS $ git init git-series
Initialized empty Git repository in /Users/toroman/git-series/.git/
MacOS $
```

## Status of the Files :: git status

- The `git status` command is probably the Git command I use the most. This command gives you the status of the repository and file for every possible state. Because I believe that doing is the best way to learn, we’ll be using `git status` in conjunction with the rest of the Git commands we will be working with.
```
MacOS $ cd git-series
MacOS $ git status
On branch main

No commits yet

nothing to commit (create/copy files and use "git add" to track)
MacOS $
```

## Adding Files to Commit :: git add

- OK, now we have this empty Git repository, and we want to start tracking our files. It is pretty common in open-source software to have a `README.md` text file written in [Markdown](https://en.wikipedia.org/wiki/Markdown), so let's create one.
```
MacOS $ echo "# Git Series Readme" > README.md
MacOS $
```

```
MacOS $ git status
On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	README.md

nothing added to commit but untracked files present (use "git add" to track)
MacOS $
```

- Notice how the new file shows up in the Untracked files:. We created the new file, but we didn't add it to Git for tracking, hence it being an untracked file.

```
MacOS $ git add README.md
MacOS $ git status
On branch main

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
	new file:   README.md

MacOS $
```

## Committing Files :: git commit

- Now the file is added and being tracked by Git, but we still need to commit it or record our changes. Let's do that and see how the status changes.
```
MacOS $ git commit
[main (root-commit) 351f1ed] Add new README.md
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
MacOS $ git status
On branch main
nothing to commit, working tree clean
MacOS $
```

- When you invoke the `git commit` command, it will typically open your default editor—in my case, `vim`—to create the commit message. As you can see, Git populates the commit message with helpful text, but notice how the helpful text lines start with `#` character. It is important to note technically that the help text is commented out so that when you save the commit message, the commented out lines are ignored.

## Modifying Existing Files and Reviewing Changes :: git diff

- By now, we have added a file and committed it to the repository, which is just a first step. Now let’s add a few more lines to the `README.md`, modify it, and then check the status.
```
MacOS $ echo >> README.md
MacOS $ echo 'Welcome to my first local repository!' >> README.md
MacOS $ git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
MacOS $
```

- Once again, the `git status` command tells us typical actions that are taken. In this case, we can stage the modified file by using the `git add`, or, because the file is already being tracked, we can use the `git commit -a` command to add any modified tracked files to staging before committing. Think of `-a` as a shortcut; you would otherwise have to use the `git add` and then `git commit` commands to do the same work that `git commit -a` will do.

- Reviewing Changes

- We have changed the `README.md`, and we know this by the **modified** status of the file. We know what we changed—we added a new line and a welcome message—but let's review the changes with the `git diff` command.

```
MacOS $ git diff
diff --git a/README.md b/README.md
index 9e8201a..7e16aee 100644
--- a/README.md
+++ b/README.md
@@ -1 +1,3 @@
 # Git Series Readme
+
+Welcome to my first local repository!
MacOS $
```

- The `git diff` output is like most difference utilities outputs. First, we have the header information about the file in question, but Git adds more information like the ****index**** line. The rest is pretty standard: the filename in question, the line number of the change, and then the change represented with `+` meaning an addition and `-` meaning a removal. In our case, we added two lines, and we can confirm that by finding the `+` sign in front of the two lines we added.

- When dealing with multiple changed, added, and/or removed files, the output of the `git diff` command can get long. If you want to just review a single file or files with in a directory using `git diff`, then you can simply add the file or directory to the end of the command.

- **TIP:** The `git diff` command shows the difference between the file Git knows to the changes currently not staged. Once the files have been staged, the `git diff` command will not show the differences between the file Git has snapshotted and the staged file unless you use the `git diff --cached` command.

- Commit Changes

- Now let's commit our changes to the `README.md` file. We are going to use one command with options to `git add` and `git commit` without opening an editor for the commit message, using the `git commit -a -m "<message>"` command.

```
MacOS $ git commit -a -m "Update README.md to include welcome message"
[main let's] Update README.md to include welcome message
 1 file changed, 2 insertions(+)
MacOS $ git status
On branch main
nothing to commit, working tree clean
MacOS $
```

## Renaming Files :: git mv

- From time to time, you need to move or rename files in your repository. For that, we use the `git mv` command. First, let’s set up a scenario with some new, incorrectly named files. We will commit the files, then realize we named them wrong and have to fix them.

- Create Files and Commit

- Let's create our files, then add and commit them to the repository.

```
MacOS $ mkdir devices
MacOS $ echo "sw0.main.office" >> devices/switches
MacOS $ echo "sw1.main.office" >> devices/switches
MacOS $ echo "sw0.branch.office" >> devices/switches
MacOS $ echo "r0.main.office" >> devices/routers
MacOS $ echo "r0.branch.office" >> devices/routers
MacOS $ git status
On branch main
Untracked files:
  (use "git add <file>..." to include in what will be committed)
	devices/

nothing added to commit but untracked files present (use "git add" to track)
MacOS $ git add devices/
MacOS $ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   devices/routers
	new file:   devices/switches

MacOS $ git commit -m "Add switches and routers"
[main 0c72f59] Add switches and routers
 2 files changed, 5 insertions(+)
 create mode 100644 devices/routers
 create mode 100644 devices/switches
MacOS $ git status
On branch main
nothing to commit, working tree clean
MacOS $
```

- As you can see, we created the files, then checked the Git status. Now we cannot use the shortcut to add modified files because these are new. We have to use the `git add` command to change their status from ****Untracked**** to ****Staged**** so that we can commit. Finally, we commit using the command-line option for the commit message.

- Renaming Files

- Now, after some review, we realize that we do not want to use the plural for the switching and routing device files. Let's move them around to fix it.

```
MacOS $ git mv devices/switches devices/switch
MacOS $ git mv devices/routers devices/router
MacOS $ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	renamed:    devices/routers -> devices/router
	renamed:    devices/switches -> devices/switch

MacOS $ git commit -m "Remove plural context for switch and router files"
[main cf2dfb6] Remove plural context for switch and router files
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename devices/{routers => router} (100%)
 rename devices/{switches => switch} (100%)
MacOS $ git status
On branch main
nothing to commit, working tree clean
MacOS $
```

- You can see that when we use the `git mv` command, it stages the move immediately. With the move already staged, we just have to commit the update.

## Removing Files :: git rm

- And finally, we need to remove a file from the repository. For that, we use the `git rm` command.

- Removing Files

- Let's go ahead and remove the `devices/router` file and commit that change.

```
MacOS $ git rm devices/router
rm 'devices/router'
MacOS $ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	deleted:    devices/router

MacOS $ git commit -m "Remove router devices file"
[main 4612520] Remove router devices file
 1 file changed, 2 deletions(-)
 delete mode 100644 devices/router
MacOS $ git status
On branch main
nothing to commit, working tree clean
MacOS $
```

- Once again, like the `git mv` command, the `git rm` command automatically stages the removal. Because it is already staged, we can then commit the changes to the repository with `git commit`.

## View Commit Log :: git log

- Now that we have a commit in the repository, let's review the work we have done.

```
MacOS $ git log
commit 46125202f573989ee8d2024c49f879132ccc7c05 (HEAD -> main)
Author: Tony Roman <tonyroman@example.com>
Date:   Tue Jul 12 11:43:51 2022 -0400

    Remove router devices file

commit cf2dfb65aa1d05b10cc6d4ae5afc33ebdc0a603f
Author: Tony Roman <tonyroman@example.com>
Date:   Tue Jul 12 11:30:48 2022 -0400

    Remove plural context for switch and router files

commit 0c72f59874b405c6b38643990dccd5962a603c79
Author: Tony Roman <tonyroman@example.com>
Date:   Tue Jul 12 11:23:04 2022 -0400

    Add switches and routers

commit 4b58fbf4905daaafa7f7c89fb61dc9ea69545e67
Author: Tony Roman <tonyroman@example.com>
Date:   Mon Jul 11 20:39:58 2022 -0400

    Update README.md to include welcome message

commit 351f1ed01e58124e9f23ef07727b669c2b1e7fda
Author: Tony Roman <tonyroman@example.com>
Date:   Mon Jul 11 14:35:17 2022 -0400

    Add new README.md
MacOS $
```

- The `git log` command lets you view a list of the commits or snapshots made to the repository.

- Let's focus on the first block the `git log` command outputted.

```
commit 46125202f573989ee8d2024c49f879132ccc7c05 (HEAD -> main)
Author: Tony Roman <tonyroman@example.com>
Date:   Tue Jul 12 11:43:51 2022 -0400

    Remove router devices file
```


# Reference

