
# 04 — Package Management

## 🧩 Context  
This module covered the basics of package management in Linux. The ability to install, remove, and upgrade packages is essential for managing software and keeping your system up-to-date and secure. We also explored different tools like `apt` and `dpkg` for managing system packages.

---

## 🔧 What I Did
- **Updated package lists** using `apt update` to ensure the system had the latest software package information.
- **Installed packages** like `curl` using `apt install` and `dpkg -i` for `.deb` files.
- **Upgraded packages** with `apt upgrade` to keep the system's software up-to-date.
- **Removed packages** using `apt remove` and `apt purge` for complete uninstallation.
- **Listed installed packages** with `dpkg --list` and examined detailed information using `apt show`.

---

## 🧠 What I Learned
- **APT and dpkg** are the primary tools for managing packages on Debian-based systems like Kali Linux.
- **APT** provides high-level commands for package management (e.g., install, remove, upgrade).
- **dpkg** works at a lower level, used primarily for installing `.deb` files and querying package details.
- Keeping packages updated is critical for system security and stability.
- Using `apt purge` removes both the package and configuration files, while `apt remove` only removes the package.

---

## 🔒 Why It Matters
- **System Maintenance**: Package management is crucial for keeping your system secure and up-to-date.
- **Security**: Regularly updating and removing unnecessary software reduces potential attack surfaces.
- **Efficiency**: Understanding how to manage packages efficiently speeds up system administration tasks and helps troubleshoot issues.

---

## 🔑 Quiz Results

**Package Management Quiz (Basic)**  
- **Total Score**: 4/5  
- **Mistakes**:  
  - **Question 4**: `dpkg --list` is used to list installed packages, not `ls /usr/bin`.  
  - The rest of the answers were correct!

---

**Package Management Quiz (Advanced)**  
- **Total Score**: 3/5  
- **Mistakes**:  
  - **Question 2**: The correct syntax for installing a `.deb` package is `dpkg -i <package_name>.deb`, not `dpkg --install <package_name>.deb`.  
  - **Question 4**: `apt` is the newer, more user-friendly command that combines the functionality of several older commands, including `apt-get` and `apt-cache`.

---

## 🖥️ Expected Output of Commands

Here’s a summary of **what you should expect to see** when running the commands covered in this module, along with **when you would use them**:

1. **`sudo apt update`**
   - **Expected Output**: The system will refresh its list of available packages from the repositories. You’ll see information about package sources being checked and updated.
     ```
     Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
     Get:2 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
     Reading package lists... Done
     ```
   - **When to use**: Run this command when you want to update the list of available software and check for any updates in the repositories. You typically use this before installing or upgrading packages.

2. **`sudo apt install curl`**
   - **Expected Output**: The system will check if the `curl` package is available and show the details of the installation, including dependencies.
     ```
     Reading package lists... Done
     Building dependency tree       
     Reading state information... Done
     The following additional packages will be installed:
       libcurl4
     Need to get 413 kB of archives.
     After this operation, 1,087 kB of additional disk space will be used.
     Do you want to continue? [Y/n]
     ```
   - **When to use**: Use this command when you want to install a specific package from the repositories. The system will prompt you to confirm before proceeding with the installation.

3. **`sudo apt upgrade`**
   - **Expected Output**: This command will show you if any installed packages need updating. It will list the packages being upgraded and ask if you want to continue.
     ```
     Reading package lists... Done
     The following packages will be upgraded:
       curl
     1 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
     Need to get 413 kB of archives.
     After this operation, 1,024 B of additional disk space will be used.
     Do you want to continue? [Y/n]
     ```
   - **When to use**: Run this after `apt update` to upgrade all the installed packages that have new versions available. This is typically used to keep your system up-to-date.

4. **`sudo apt remove curl`**
   - **Expected Output**: This will show you which packages will be removed and how much space will be freed. You’ll be asked to confirm.
     ```
     Reading package lists... Done
     Building dependency tree       
     Reading state information... Done
     The following packages will be REMOVED:
       curl
     0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
     Need to get 0 B of archives.
     After this operation, 1,087 kB disk space will be freed.
     Do you want to continue? [Y/n]
     ```
   - **When to use**: Use this when you want to uninstall a package but keep its configuration files. This is often used for cleaning up unneeded packages.

5. **`dpkg --list`**
   - **Expected Output**: This command lists all installed packages along with their versions. It’s a quick way to see everything installed on your system.
     ```
     ii  7zip                                   24.09+dfsg-8                             amd64        7-Zip file archiver with a high compression ratio
     ii  accountsservice                        23.13.9-7                                amd64        query and manipulate user account information
     ii  acl                                    2.3.2-2+b1                               amd64        access control list - utilities
     ```
   - **When to use**: Run this command to get a list of all installed packages on your system. It’s useful for checking if a package is installed or for auditing installed software.

6. **`dpkg -i <package_name>.deb`**
   - **Expected Output**: This installs a `.deb` package. You’ll see output about unpacking and setting up the package.
     ```
     (Reading database ... 345945 files and directories currently installed.)
     Preparing to unpack <package_name>.deb ...
     Unpacking <package_name> ...
     Setting up <package_name> ...
     ```
   - **When to use**: Use this when you have a downloaded `.deb` file that you want to install manually.

