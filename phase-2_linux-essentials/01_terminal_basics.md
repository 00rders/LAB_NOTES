# 01 — Terminal Basics

## 🧩 Context  
The terminal is a powerful tool for interacting with the Linux operating system. This module provides a hands-on introduction to basic terminal commands for file navigation, system management, and file manipulation. Mastering these commands is essential for efficiently using Linux in any cybersecurity or system administration context.

---

## 🔧 What I Did

### 🛠️ Basic Commands for Navigation and File Management
- **`pwd`**: Printed the working directory to confirm the current location in the file system.
- **`ls` and `ls -l`**: Listed the contents of directories and explored detailed file information, such as permissions, owner, size, and modification date.
- **`cd`**: Changed directories to navigate through the file system.
- **`mkdir`**: Created new directories.
- **`rm` and `rmdir`**: Deleted files and empty directories.
- **`touch`**: Created empty files.
- **`cat`**: Displayed the contents of a file.
- **`echo`**: Printed text to the terminal or wrote it to a file.

### ⚙️ File Permissions and Ownership
- Explored basic file permissions using `chmod`, `chown`, and `ls -l`.
- Created and modified file permissions using the numeric system (e.g., `chmod 700`).
- Investigated how directory and file permissions affect access and security.

---

## 🧠 What I Learned
- **File Management**: Commands like `ls`, `mkdir`, `touch`, and `rm` are essential for creating, viewing, and managing files and directories.
- **Permissions**: Understanding how file permissions and ownership work allows you to manage access control and secure your system.
- **Navigation**: Using `cd` and `pwd`, I learned how to efficiently navigate through the file system and view the current working directory.
- **Command Combinations**: Combining commands like `ls -l` and `chmod` provides deeper insights into system administration and security.

---

## 🔒 Why It Matters
- **Foundation for Cybersecurity**: Mastering terminal basics is essential for navigating Linux, managing files, and securing systems, which are key aspects of penetration testing, system administration, and security audits.
- **Efficiency**: Familiarity with terminal commands boosts productivity, allowing faster navigation and file management compared to graphical interfaces.
- **Security**: Understanding file permissions and ownership is critical for controlling access to sensitive files and ensuring system security.

---

## 🏦 Real-World Application Scenario:
In a **system administration** or **cybersecurity** role, mastering basic terminal commands is crucial for quickly navigating the system and performing various tasks. For example, when **troubleshooting** an issue on a remote server, you might need to:

- Use **`ls`** to list files and directories, helping you identify the correct location of files or check directory contents.
- Use **`pwd`** to confirm your current working directory, ensuring you’re operating in the right location while editing files or executing commands.
- Utilize **`cd`** to navigate between directories efficiently, especially when you're managing a server with many directories containing system configurations, logs, or user files.
- Leverage **`rm`** or **`touch`** to manage files—whether you’re cleaning up unnecessary files or creating new files for logging or configuration purposes.
- Use **`ls -l`** to check file permissions and ownership, which is vital when dealing with sensitive files, such as **configuration files** in `/etc` or user files in `/home`.

By becoming comfortable with these commands, you can quickly adapt to any Linux system, troubleshoot problems, manage files, and ensure proper system configuration, saving time and avoiding errors in high-pressure environments.

---

## 🖥️ Expected Output of Commands

Here’s a summary of **what you should expect to see** when running the commands covered in this module, along with **when you would use them**:

1. **`pwd`**  
   - **Expected Output**: Displays the current working directory.
     ```
     /home/user
     ```
   - **When to use**: Use when you need to know your current directory.

2. **`ls`**  
   - **Expected Output**: Lists files and directories in the current directory.
     ```
     Desktop  Downloads  Documents  Pictures
     ```
   - **When to use**: Use to display the contents of the current directory.

3. **`ls -l`**  
   - **Expected Output**: Displays detailed information about files (permissions, ownership, size, and modification time).
     ```
     -rw-r--r-- 1 user user  4096 Jan 1 12:00 example.txt
     drwxr-xr-x 2 user user  4096 Jan 1 12:00 Documents
     ```
   - **When to use**: Use when you need detailed information about files, such as permissions and ownership.

4. **`cd`**  
   - **Expected Output**: No visible output, but changes the current directory.
     - After running `cd Documents`, you’ll be in the `Documents` directory.

   - **When to use**: Use to change the working directory.

5. **`touch filename`**  
   - **Expected Output**: Creates an empty file (if it doesn't exist).
     ```
     (No output, but `filename` is created.)
     ```
   - **When to use**: Use when you want to create a new empty file.

6. **`rm filename`**  
   - **Expected Output**: Removes the specified file.
     ```
     (No output unless there’s an error.)
     ```
   - **When to use**: Use when you need to delete a file.

7. **`cat filename`**  
   - **Expected Output**: Displays the contents of a file.
     ```
     This is the content of the file.
     ```
   - **When to use**: Use to quickly view the contents of a file.
  
  ---

### ✅ Future Topics to Explore:
- **Advanced File Permissions**: Access Control Lists (ACLs), special permissions (SUID, SGID, sticky bits).
- **Pipes and Redirection**: Using pipes (`|`) to chain commands and redirecting output (`>`, `>>`, `2>`, `&>`) for powerful workflows.
- **Process Management**: Managing and monitoring processes with `ps`, `top`, `kill`, and `htop`.
- **Searching and Finding**: More advanced searching tools like `locate`, `ack`, and `ag`.
- **File Compression and Archiving**: Using commands like `tar`, `gzip`, `zip`, and `unzip`.
- **Shell Scripting**: Automating tasks with shell scripts, conditional statements, loops, and functions.

