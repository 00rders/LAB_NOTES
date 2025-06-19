
# 05 — Intro to Bash

## 🧩 Context  
This module introduced the basics of **Bash scripting**, which is crucial for automating tasks, managing systems, and interacting with the Linux environment. I learned how to write and execute simple scripts, use variables, conditionals, loops, and handle user input.

---

## 🔧 What I Did
- **Created simple scripts** with `#!/bin/bash` to automate tasks.
- **Used variables** to store values and used them in scripts.
- **Wrote conditionals** to check file existence and other conditions.
- **Created loops** to iterate over values and execute tasks repeatedly.
- **Handled user input** to make the scripts interactive.

---

## 🧠 What I Learned
- **Bash scripting basics**: how to write and execute simple scripts, and use basic syntax.
- **Variables**: how to store values in variables and use them within scripts.
- **Conditionals**: using `if`, `else`, and `elif` to make decisions in scripts.
- **Loops**: creating `for` and `while` loops to repeat actions in scripts.
- **User input**: reading input from users and using it in scripts.

---

## 🔒 Why It Matters
- **Automation**: Bash scripting is a key skill for automating tasks and processes on Linux systems.
- **Efficiency**: It saves time by allowing repetitive tasks to be automated, reducing manual effort.
- **System Administration**: Understanding Bash helps with managing servers, backups, logs, and more.
- **Cybersecurity**: In cybersecurity, scripting helps automate security checks, system monitoring, and other tasks to improve efficiency and reduce human error.

---

### 🏦 Real-World Application Scenario:
In a **system administration** role, you are tasked with regularly backing up important directories across a network of servers. Each server is in a different directory structure, and manual backups are time-consuming. Using **Bash scripting**, you can write a script that:
- Automatically backs up specified directories.
- Logs the backup process with timestamps.
- Sends an email notification if the backup was successful or if there was an error.

This would be run as a scheduled cron job, automating the task completely. With just a few lines of code, you save hours of manual effort and ensure that backups are always up to date, reducing the risk of data loss.

---

## 🖥️ Expected Output of Commands

Here’s a summary of **what you should expect to see** when running the commands covered in this module, along with **when you would use them**:

1. **`#!/bin/bash`**
   - **Expected Output**: No visible output, but it tells the system to use Bash to run the script.
   - **When to use**: Always at the start of a script to specify that it should be interpreted by Bash.

2. **`chmod +x script.sh`**
   - **Expected Output**: No visible output unless there is an error.
   - **When to use**: Use it to make a script executable after creating or modifying it.

3. **`read input`**
   - **Expected Output**: Prompts the user for input.
     ```
     Enter your name: Alice
     ```
   - **When to use**: Use this when you want to prompt the user for input and store it in a variable.

4. **`if [ -f "$filename" ]; then`**
   - **Expected Output**: The script checks if a regular file exists and prints a corresponding message.
     ```
     The file exists.
     ```
   - **When to use**: Use this when you want to check if a specific file exists before taking action.

5. **`for i in {1..5}; do echo $i; done`**
   - **Expected Output**:
     ```
     1
     2
     3
     4
     5
     ```
   - **When to use**: Use this loop to repeat an action (like printing or processing) multiple times
