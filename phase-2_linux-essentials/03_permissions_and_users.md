# 03 — Permissions and Users

## 🧩 Context  
Understanding user and group management is essential for controlling who has access to what files and directories in a Linux system. This module covers creating and managing users and groups, as well as modifying file ownership and permissions.

---

## 🔧 What I Did

### 🛠️ User Management
- **`useradd`**: Used to create a new user with a home directory and shell.
- **`usermod`**: Modified an existing user by adding them to a group.
- **`userdel`**: Deleted a user account and their home directory.

### 🛠️ Group Management
- **`groupadd`**: Created a new group.
- **`groupmod`**: Modified an existing group (e.g., renaming).
- **`groupdel`**: Deleted a group.

### 🛠️ File Ownership and Permissions
- **`chown`**: Changed file ownership (owner and group).
- **`chgrp`**: Changed the group ownership of a file.
- **Permissions Management**: Applied **SUID**, **SGID**, and sticky bit on files and directories for special access control.

---

## 🧠 What I Learned
- **User and Group Management**: Learned how to create, modify, and delete users and groups on the system. 
- **File Ownership**: Understood how to manage file and group ownership using `chown` and `chgrp`, and how this impacts file permissions.
- **Special Permissions**: Learned about special permissions like **SUID**, **SGID**, and the sticky bit, and how they affect file behavior.
- **Security**: Gained insight into how user and group permissions control access to resources and how to secure files through proper ownership and group management.

---

## 🔒 Why It Matters
- **System Administration**: Mastering user and group management is critical for ensuring that system resources are accessible only to the appropriate users and groups.
- **Security**: Properly setting file ownership and permissions is key to preventing unauthorized access and protecting sensitive information.
- **Efficiency**: Understanding these commands allows for better control over who can access, modify, and execute files, streamlining system administration tasks.

---

## 🔑 Quiz Results

**Permissions and Users Quiz**  
- **Total Score**: 3/5  
- **Mistakes**:  
  - **Question 3**: `chgrp` is used to change the group ownership of a file, not `chown`.
  - **Question 5**: The sticky bit prevents users from deleting or renaming files owned by other users in the same directory, not just restricting execution to the root user.

---

## 🔑 Quiz Results

**Permissions and Users Quiz (extended)**  
- **Total Score**: 5/5  
- **Mistakes**: None! ✅

---

