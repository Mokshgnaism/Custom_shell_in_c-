# Custom Shell in C++

A fully functional custom command-line shell implemented in C++, featuring:

- Standard command execution
- Auto-completion (with GNU Readline)
- Shell script execution
- Custom task scheduling

---

## 🚀 Getting Started

### 📁 Step 1: Clone or Copy the Project

Make sure all **12 source files** are present in a single folder (e.g., `custom_shell`).

### 🛠️ Step 2: Build the Shell

From the terminal, navigate to your folder:

```bash
cd /home/saisriramdodda1302/custom_shell
```

Compile using `g++` with `readline` support:

```bash
g++ main.cpp command_parser.cpp shell_executor.cpp auto_complete.cpp script_runner.cpp task_scheduler.cpp -lreadline -o custom_shell
```

Run the shell:

```bash
./custom_shell
```

---

## ✅ Features & Validation

### 1️⃣ Basic Command Execution

You can run standard Linux commands inside your shell:

```bash
ls
pwd
echo "Hello from custom shell"
```

If these work, your shell base functionality is ✅ complete.

---

### 2️⃣ Auto-Completion System

Integrated using the `readline` library.

**Test it:**

```bash
ec<TAB>   # Should auto-complete to echo
ls<TAB>   # Should suggest files/directories
```

If suggestions appear, auto-completion is ✅ functional.

---

### 3️⃣ Shell Script Execution

Your shell can execute standard `.sh` scripts.

**Test Script:**

```bash
echo -e '#!/bin/bash\necho "Script executed!"' > test_script.sh
chmod +x test_script.sh
./test_script.sh
```

If you see `"Script executed!"`, script support is ✅ working.

---

### 4️⃣ Task Scheduling

You can schedule commands using:

```bash
schedule +<minutes> <command>
```

**Example:**

```bash
schedule +1 echo "Task executed after 1 minute!"
```

Wait for 1 minute — the message will appear. If it does, scheduling is ✅ working.

---

## 📁 File Structure

| File                 | Description                              |
|----------------------|------------------------------------------|
| `main.cpp`           | Shell entry point                        |
| `command_parser.*`   | Parses user input commands               |
| `shell_executor.*`   | Executes system commands                 |
| `auto_complete.*`    | Provides tab-based auto-completion       |
| `script_runner.*`    | Manages shell script execution           |
| `task_scheduler.*`   | Handles timed task scheduling            |
| `makefile`           | (Optional) Build instructions            |

---

## 📌 Dependencies

- C++ Compiler (e.g., g++)
- `readline` library

Install `readline` if missing:

```bash
sudo apt install libreadline-dev
```

---

## 🧠 Author

Developed by [Mokshgna](https://github.com/Mokshgnaism)  
Feel free to contribute, suggest features, or report bugs!

---

## 📝 License

This project is licensed under the MIT License.
