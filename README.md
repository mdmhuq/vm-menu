# VM Menu — Libvirt / virsh CLI Helper

A simple **interactive Bash menu** for managing libvirt virtual machines using `virsh`.
Designed for fast, repeatable VM control without memorizing commands.

---

## ✨ Features

* List all virtual machines (running + stopped)
* Start a specific VM
* Gracefully shut down a VM
* Force stop (destroy) a VM
* Enable VM autostart at host boot
* Simple numeric menu interface

---

## 📦 Requirements

* Linux system with **libvirt** installed
* `virsh` available in `$PATH`
* User permission to manage libvirt VMs
  (usually membership in the `libvirt` group or use of `sudo`)

Check:

```bash
virsh --version
```

---

## 🚀 Usage

### Run locally (development / learning)

```bash
chmod +x vm-menu.sh
./vm-menu.sh
```

---

### Menu Options

```
1) list all VMs
2) start specific VM
3) shutdown VM
4) force stop VM
5) autostart VM at boot
6) exit
```

For options **2–5**, you will be prompted to enter the **VM name**
(e.g. `ubuntu25.04`).

---

## 🛠 Installation (Optional)

If you want to run the script like a normal command (`vm-menu`), install it system-wide.

### Option 1: Install directly (simple)

```bash
sudo mv vm-menu.sh /usr/local/bin/vm-menu
sudo chmod +x /usr/local/bin/vm-menu
```

Run from anywhere:

```bash
vm-menu
```

---

### Verify Installation

```bash
which vm-menu
```

Expected output:

```text
/usr/local/bin/vm-menu
```


