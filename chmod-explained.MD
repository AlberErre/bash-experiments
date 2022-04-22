Linux operating systems are actually Unix-like systems, and Unix-like systems approach file permissions like:

Every file has an owner, which determines the file's "user class." Every file also has a group, which determines the file's "group class." Any system user who isn't the owner and doesn't belong in the same group is determined to be others.

All files on Unix-like systems have permissions assigned to all three classes, and these determine which actions can be taken by said classes for the given file.

The three actions available on a Unix-like system are: read (the ability to open and view the contents of the file), write (the ability to open and modify the contents of a file), and execute (the ability to run the file as an executable program).

In other words, a file's permissions determine whether or not:

- The owner can read, write, and execute the file.
- The group can read, write, and execute the file.
- Anyone else can read, write, and execute the file.

Linux file permissions can be displayed in two formats.

The first format is called symbolic notation, which is a string of 10 characters: one character that represents the file type, then nine characters that represent the file's read (r), write (w), and execute (x) permissions in order of owner, group, and others. If not permitted, the dash symbol (-) is used.

For example:

-rwxr-xr--
This means it's a regular file with read, write, and execute permissions for the owner; read and execute permissions for the group; and only read permissions for everyone else.

The second format is called numeric notation, which is a string of three digits that each represent user, group, and other permissions, respectively. Each digit can range from 0 to 7, and each digit's value is obtained by summing the class's permissions:

0 means no permissions allowed.
+1 if the class can execute the file.
+2 if the class can write to the file.
+4 if the class can read the file.
In other words, the meaning of each digit value ends up being:

0: No permission
1: Execute
2: Write
3: Write and execute
4: Read
5: Read and execute
6: Read and write
7: Read, write, and execute
So the above example (

-rwxr-xr--
) would be 754 in numeric notation.

What Is Chmod?
On Unix-like systems, chmod is a system-level command that stands for "change mode" and allows you to manually change the permission settings of a file.

Not to be confused with chown, which is another system-level command on Unix-like systems that stands for "change owner" and lets you assign ownership of a file to another user, or chgrp, which stands for "change group" and assigns a file to a different group. These are important to know, but not as commonly used as chmod.

What Does Chmod 644 Mean?
Setting a file's permissions to 644 makes it so only the owner can access and modify the file however they want while everyone else can only access without modifying, and nobody can execute the file---not even the owner. This is the ideal setting for files that are publicly accessible because it balances flexibility with security.

What Does Chmod 755 Mean?
Setting a file's permissions to 755 is basically the same thing as 644 except everyone also has execute permissions. This is mainly used for publicly accessible directories because the execute permission is needed in order to change into a directory.

What Does Chmod 555 Mean?
Setting a file's permissions to 555 makes it so that the file cannot be modified at all by anyone except the system's superuser (learn more about the Linux superuser). This isn't as commonly used as 644, but it's still important to know because the read-only setting prevents accidental changes and/or tampering.

What Does Chmod 777 Mean?
Setting a file's permissions to 777 makes it so anyone can do anything they want with the file. This is a huge security risk, especially on web servers! Literally anyone can access the file, modify it however they want, and execute it on the system. You can imagine the potential damage if a rogue user got their hands on it.


