# Wadix Technologies Toolchain Setup

This repository describes the set of tools required to build and run various labs, demos, and example projects provided by **[Wadix Technologies](https://www.wadixtech.com)**.  

These tools are **Windows-based** and are necessary to ensure compatibility with the provided training material and reference projects.

---

## 📦 Required Tools

- **Arm GCC 10.3.2** – ARM cross-compiler toolchain  
- **CMake** – Build system generator  
- **MSYS64** – Unix-like environment and package manager for Windows  
- **Cygwin64** – POSIX-compatible environment for Windows  
- **Make** – Standard build automation tool  
- **Ninja** – Lightweight build system  
- **Alif-SETTOOLS** – Tools and utilities from Alif Semiconductor  
- **libsnd-windows** – Required sound library dependencies for certain projects  
- **Tera Term** – Serial terminal emulator for Windows  
- **wget-win64** – Command-line network downloader for Windows  

---

## 🚀 Getting Started

We provide PowerShell scripts to easily set up and configure the development environment.

### ⚙️ Install / Setup Environment

1. Open a **PowerShell session** (User Account).  
2. Allow script execution by running:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope Process
   ```
3. Run the setup script to configure environment variables:
   ```powershell
   .\install-env.ps1
   ```

### 🧹 Uninstall / Remove Environment

1. Open a **PowerShell session** (User Account).  
2. Allow script execution by running:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope Process
   ```
3. Run the uninstall script to remove environment variables:
   ```powershell
   .\uninstall-env.ps1
   ```

> After running `install-env.ps1`, all required tools will be correctly configured in your `PATH`, enabling you to build and run the labs, demos, and example projects.

---

## 📚 Learn More with Wadix Technologies

We provide hands-on labs, training, and real-world embedded system demos.  

👉 Visit our websites:  
- 🌐 [www.wadixtech.com](https://www.wadixtech.com)  
- 🎓 [courses.wadixtech.com](https://courses.wadixtech.com)  

Stay updated and expand your embedded systems skills with us!  

