# 02 — File System Structure

## 🧩 Context  
Understanding the Linux file system structure is crucial for navigating and managing files efficiently. This module provided an introduction to the organization of the file system and key directories in Linux.

---

## 🔧 What I Did

### 🛠️ Key Linux Directories Explored
- **`/` (Root Directory)**: The top-level directory in the file system.
- **`/etc` (Configuration Files)**: Contains system configuration files.
- **`/home` (User Directories)**: Stores personal user directories.
- **`/bin` (Binaries)**: Contains essential system binaries and executables.
- **`/var` (Variable Files)**: Stores files that change frequently, such as logs and caches.
- **`/media`**: Stores external device mount points.
- **`/mnt`**: Used for manually mounting filesystems.
- **`/tmp` (Temporary Files)**: Stores temporary files.

### 🔍 What I Learned
- **Linux File Hierarchy**: The Linux file system is structured in a tree-like hierarchy starting from the root directory (`/`).
- **Key Directories**: Important directories like `/etc`, `/home`, and `/var` are essential for system configuration, user data, and logs.
- **Practical Exploration**: Learned how to navigate and list the contents of key system directories, view file contents, and practice with file management tasks.

---

## 🔒 Why It Matters
- **System Management**: A solid understanding of the file system structure is essential for effective system administration and file management.
- **Security**: Knowing the locations of important system configuration files, logs, and user directories helps in maintaining system security.
- **Efficiency**: Familiarity with the file system structure improves efficiency when performing tasks like system maintenance, troubleshooting, and managing user data.

---

## 🏦 Real-World Application Scenario:
In a **system administration** role, understanding the Linux file system structure is crucial for effective file management, backups, and system maintenance. For example, when performing a **system audit** or preparing for a **backup**, you need to know where critical system files and user data are stored.

- By knowing that `/etc` contains configuration files (like `/etc/passwd` for user accounts), you can ensure proper **configuration backups** or **system restores**.
- Understanding the `/home` directory is essential for managing **user files** and ensuring that backups of personal data are made regularly.
- Familiarity with directories like `/var/log` allows you to monitor and **maintain system logs**, which is key for troubleshooting and maintaining system health.
- Knowing where files are located (such as `/bin` for system binaries or `/usr/bin` for user executables) helps when managing and updating **software packages**, or when running **system diagnostics** and resolving file-related issues.

By mastering the file system structure, you can quickly navigate the system, manage files securely, and ensure the smooth operation of the server environment.

---

## 🔑 Quiz Results

**Linux File System Structure Quiz**  
- **Total Score**: 7/10  
- **Mistakes**:  
  - **Question 6**: `/media` stores external device mount points, not configuration files for devices.
  - **Question 7**: User account information is stored in `/etc/passwd`, not `/etc/shadow`.
  - **Question 10**: Temporary files are stored in `/tmp`, not `/var/log`.

---

## 🔑 Quiz Results

**Advanced Linux File System Structure Quiz**  
- **Total Score**: 7/8  
- **Mistakes**:  
  - **Question 6**: `cat /etc/shadow` shows user account names and password hashes, not the contents of `/etc/passwd`.
  

