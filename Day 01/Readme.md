# Day 01 – Linux Basics
📅 **Date:** July 8, 2025

## 📚 Topics Covered:

### File System Navigation:
- `pwd`: present working directory
- `ls` : List contents
- `cd` : change directory

### File/Directory Commands:
- `touch` : create a new file
- `mkdir` : make a new directory
- `rm`    : Remove file or directory
- `cp`    : Copy file
- `mv`    : Move file or directory

### Path Types:
- `absolute path` : provides the full path from the root directory (/).
- `relative path` : defined in relation to the current working directory.

### Hidden Files:
- `ls -a` : list all files including hidden

### Wildcards:
- `*` : Matches zero or more characters. For example, *.txt would match all files with the .txt extension. 
- `?` : Matches any single character. For example, file?.txt would match file1.txt, fileA.txt, etc. 
- `[]`: The square brackets ([]) are used to create character ranges or sets. They allow you to match a specific set of characters in a single position. For example, ls file[123].txt would match "file1.txt", "file2.txt", and "file3.txt", but not "file4.txt".

### Flags/Options:
- `ls -l` : long list
- `ls -a` : list all files including hidden
- `ls – lt` : long list files in order created
- `ls –ltr` : long list files in the reverse order created

## 🧠 Key Learnings:
- Learned how to navigate the Linux file system using basic commands.
- Understood the difference between absolute and relative paths.
- Explored hidden files using `ls -a`.
- Practiced using wildcards to search and match filenames.
- Got familiar with command flags like `-l` for detailed output.

## 🔧 Practice Done:
- Created and deleted multiple files/folders using CLI.
- Built a nested directory structure to simulate real-world usage.
- Used wildcards to batch remove and list files.
- Wrote a mini script to automate directory creation.

## 💬 Reflections:
- Terminal navigation is becoming more intuitive.
- Wildcards can be powerful but dangerous—double-check before using with `rm`!
- Keeping hands on the terminal instead of just watching tutorials made learning stick.

## 😤 Challenges:
- Initially confused between `absolute` and `relative` paths.
- Overused wildcards and almost deleted important files—lesson learned!

## 🔗 Resources:
- [Linux Command Handbook](https://www.freecodecamp.org/news/the-linux-commands-handbook/)
- [tldp.org - Introduction to Linux](https://tldp.org/LDP/intro-linux/html/)
