
2024-08-13 08:03

Status:

Tags:

[[Linux]]
[[Books]]
# You Unix Linux The Ultimate Guide

## Copy Move and Remove

- Usage of cp, rm, and mv commands
	- cp note .. "Copies file note to the parent directory"
	- cp ../note . "Copies file note from the parent directory to current directory"

## Navigation

- Navigation on man pages
	- f or spacebar one page forward
	- b one page back
	- 20f 20 pages forward
	- 15b 15 pages back
	- j or [enter] one line forward
	- k one line back
	- p or 1G beginning of file
	- G end of file
	- /ftp[enter] pattern matching search
	- n repeats forward
	- b repeats backwards
- ^ = [Ctrl]
- wc(word count) counts lines, words, and characters "wc infile"
- wc -l infile specific line count

## Printing a File

- lp file.txt "Print file to default printer"
- lp -d{printername} file.txt "Print file to specified printer"
- lp -n3 file.txt print 3 times
- lpstat check status of the line printer status
- you can cancel request-id or printer name "cancel {file.txt, printer01}"
- to be able to use lp to print you need to change the file to a Postscript file type ending with .ps.  you can use tools like a2ps or enscript.

## Viewing Nonprintable Characters

- Binary files contains nonprintable characters,  also know as magic numbers often characters in the extended ASCII range.
- We cant view it with cat or more but we can with od (octal dump)
- od -bc /bin/cat | less makes the output quite readable.

## The Archival Program

- -c creates an archive
- -x extracts files from archive
- -t displays files in archive
- -f specifying the name of the archive
- -v to display progress
- tar -cvf archive.tar libc.html User_guide.ps "Creating an archive called archive.tar"
- tar -xvf archive.tar "Extract an archive by file name"

## The Compression and Archival Program

-  gzip  file.html "Replaces with file.html.gz"
- To see the amount of compression archived, use the -l command
- gzip -l file.html.gz ".gz not necessary"
- Uncompressing a gzipped file
- gunzip file.html.gz
- gzip -d file.html.gz
- gzip archive.tar "Archived and compressed"
- gunzip archive.tar.gz "Retrieves archive.tar"
- tar -xvf archive.tar "Extracts files"
- tar -cvzf archive.tar.gz {files} "Compresses also"
- tar -xvzf archive.tar.gz "Decompresses also"
- zip archive.zip {Files} combines compressing and archival
- This command doesn't overwrite an existing compressed file.  They either update or append to the archived files.
- zip -r {directory}  recursively zip the directory
- unzip archive.zip
- unzip -v archive.zip to view the archive

## File Attributes

### ls Revisited: Listing File Attributes

- ls -l lists files and directory along with detailed info like read write and executable status
- File Attributes are stored in the inode, a structure that is maintained in a separate area of the hard disk
- The First column of the first field shows the file type.  
- The nine remaining characters form a string of permissions which can take the value r (read), w(write), x(execute), -(absence)
- The second field indicates the number of links associated with the file
- Every File has an owner, the third field shows the owner.
- fifth shows file size in bytes
- the kernel allocates space in blocks of 1024 bytes or more, so even thou file could be 163 bytes, it could occupy 1024
- sixth field shows last modification time.
- The last field shows file name.

### File Permissions

- Unix follows a three-tiered file protection system that determines a file's access rights
- ![[Pasted image 20240816125520.png]]
- chmod(change mode)  allows you to change the permissions of a file.

### Changing File Permissions

 - chmod [-R] mode file ...
 - The mode can be represented in two ways:
 - In a relative manner by specifying the changes to the current permissions
 - in an absolute manner by specifying the file permissions
 - only the user/owner can change permissions
 - when changing the permission in a relative manner, chmod only changes the permissions specified in mode and leaves the other permissions unchanged.
 - ![[Pasted image 20240818004736.png]]
 - ![[Pasted image 20240818004817.png]]
 - chmod u+x file.sh "changes the file for the user as a executable file"
 - Permissions are removed with the - operator
 - chmod u-x file.sh
 - This expression comprises of multiple categories
 - chmod ugo+x file.sh
 - The synonym a is available for ugo, so ugo+x is the same as a+x( or even +x).  We can also assign multiple permissions
 - chmod go-rx file.sh
 - Absolute assignment is done with octal numbers
 - Read Permissions--4 (Octal 100)
 - Write Permissions--2 (Octal 010)
 - Execute Permissions--1 (Octal 001)
 - The most significant digi represents user, and the least significant one represents others.
 - chmod can use this three-digits string as the expression
 - chmod 644 file.sh
 - chmod -R descends a directory hierarchy and applies the expression to every file and subdirectory it finds in the tree-walk
 - chmod -R a+x shell_scripts
 - So to use chmod on your home directory tree, 'cd' to it and use it in one of these ways:
 - chmod -R 755 .  "Works on hidden Files"
 - chmod -R a=x * "Ignores hidden files"

### The Directory

- The directory also stores filenames and inode number. So the size of the directory is determined by the number of files housed by it and not by the size of files.
- The term "write protection" has limited meaning,  A write-protected file can't be written, but it can be removed if the directory has write permission.
- Execute permissions for a directory "search permission" allows user to use commands like cd into each directory.  But if any one of them doesn't then you can't nest any farther.

### unmask: Default file and directory permission

- default permissions for all files and directories
- rw-rw-rw- (octal 666) for regular files
- rwxrwxrwx (octal 777) for directories
- How ever when you create file it might be different due to your user mask changing it.
- ![[Pasted image 20240820085222.png]]
- when creating file with user permission 022. The file will get permission 644(666-022) and 755 (777-022) for directories.

### File System and Inodes

- Every file is associated with a table called inode (index node).  The inode is accessed by the inode number contains the following attributes of a file:
	• File type (regular, directory, device, etc.)
	• File permissions (the nine permissions and three more)
	• Number of links (the number of aliases the file has)
	• The UID of the owner
	• The GID of the group owner
	• File size in bytes
	• Date and time of last modification
	• Date and time of last access
	• Date and time of last change of the inode
	• An array of pointers that keep track of all disk blocks used by the file
- ls -i file.sh "Shows inode number"

### Creating Hard Links

- ![[Pasted image 20240820121537.png]]
- When to use hard links
- 1. Let’s assume that you have written a number of programs that read a file foo.txt
in $HOME/input_files. Later, you reorganize your directory structure and move
foo.txt to $HOME/data instead. What happens to all the programs that look for
foo.txt at its original location? Simple, just link foo.txt to the directory input_files:
ln data/foo.txt input_files Creates link in directory input_files
With this link available, your existing programs will continue to find foo.txt
in the input_files directory. It’s more convenient to do this than to modify all
programs to point to the new path.
2. Links provide some protection against accidental deletion, especially when they
exist in different directories. Referring to the previous application, even though
there’s only a single file foo.txt on disk, you have effectively made a backup of
this file. If you inadvertently delete input_files/foo.txt, one link will still be
available in data/foo.txt; your file is not gone yet.
3. Because of links, we don’t need to maintain two programs as two separate disk
files if there is very little difference between them. A file’s name is available to a
C program (as argv[0]) and to a shell script (as $0). A single file with two links
can have its program logic make it behave in two different ways depending on the
name by which it is called. There’s a shell script using this feature in Section 13.8.2.

### File Ownership

- When sys admin creates a new user they have to be assign these parameters to the user.
- UID(user-id) both its name and numeric representation
- GID(group-id) both its name and numeric representation
- The admin has to assign the group name also if the GID represents a new group.
- id command shows current user info
- There are two commands for changing the ownership of a file and directory.
- chown (change owner)
- chown *options* owner [:group] file(s)
- sudo chown alloutnoob file.sh
- chgrp (change group)
- a user can change the group owner of a file only if they belong to the group
- sudo chgrp alloutnoob file.txt
- you can use chown to change both owner and group
- chown user:group file.txt

### Modification and access Times

- The inode stores three time stamps. In this section, we’ll be discussing just two of them
	(the first two of the following list):
	• Time of last file modification Shown by ls -l
	• Time of last access Shown by ls -lu
	• Time of last inode modification Shown by ls -lc
	ls -lt Displays listing in order of their modification time
	ls -lut Displays listing in order of their access time

### find: Locating Files

- find is one of the power tools of the UNIX system. It recursively examines a directory
tree to look for files matching some criteria and then takes some action on the selected
files.
- find path_list selection_criteria action
- ![[Pasted image 20240820141745.png]]
- find / -name a.out
- find . -name “*.c” -print All files with extension .c
- find . -name ‘[A-Z]*’ -print Single quotes will also do
- Locating a File by Inode Number (-inum)
- find / -inum 13975
- ![[Pasted image 20240820142301.png]]
- The -type option followed by the
letter f, d, or l selects files of the ordinary, directory, and symbolic link type. Here’s
how you locate all directories of your home directory tree:
- cd ; find . -type d -print 2>/dev/null    *Shows the . also*
- ./.netscape *Displays hidden directories also*
- find $HOME -perm 777 -type d *The -perm option specifies the permissions to match.*
- find’s options can easily match a file’s modification (-mtime) and access (-atime) times to
	select them. The -mtime option helps in backup operations by providing a list of those
	files that have been modified, say, in less than two days:
- find . -mtime -2 *Here, -2 means less than two days. To select from the /home directory all files that have not been accessed for more than a year, a positive value has to be used with -atime*
- find /home -atime +365 *+365 means greater than 365 days; -365 means less than 365 days. For specifying exactly 365, use 365.*
- There are three operators that are commonly used with find. The ! operator is used
before an option to negate its meaning
- find . ! -name “*.c”
- use the -o operator, which represents an OR condition
- find /home \( -name “*.sh” -o -name “*.pl” \)
- The -a operator represents an AND condition, and is implied by default whenever two selection criteria are placed together
- 

# Reference
