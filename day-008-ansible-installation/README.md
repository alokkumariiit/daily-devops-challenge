# Day 8 - Ansible Installation and Setup

## Goal

Install Ansible and understand the basic setup required to use it as a configuration management and automation tool.

---

## What is Ansible?

Ansible is an open-source automation tool used for:

- Configuration Management
- Application Deployment
- Infrastructure Provisioning
- Server Automation
- Orchestration

Ansible is agentless, meaning it communicates with remote servers using SSH and does not require any agent installation on target machines.

---

## Prerequisites

- Linux Controller Node
- Python 3
- pip3
- SSH Access to target servers

---

## Install Ansible using pip3

Check Python:

```bash
python3 --version
```

Check pip:

```bash
pip3 --version
```

Install Ansible:

```bash
sudo pip3 install ansible
```

Install a specific version:

```bash
sudo pip3 install ansible==4.9.0
```

---

## Verify Installation

```bash
ansible --version
```

Example Output:

```text
ansible [core]
python version = 3.x
```

---

## Why Install with sudo?

Installing with sudo makes the Ansible binary available globally.

```bash
sudo pip3 install ansible
```

This allows all users on the system to run:

```bash
ansible --version
```

---

## Ansible Architecture

```text
Controller Node
       |
       | SSH
       |
Target Servers
```

Controller Node:

- Runs Ansible commands
- Stores Playbooks
- Connects using SSH

Managed Nodes:

- Target servers
- No agent required

---

## Basic Ansible Commands

Check version:

```bash
ansible --version
```

List inventory:

```bash
ansible-inventory --list
```

Ping hosts:

```bash
ansible all -m ping
```

Display help:

```bash
ansible --help
```

---

## Key Learnings

- Ansible is agentless.
- SSH is used for communication.
- pip3 can install Ansible.
- Specific versions can be installed when required.
- The controller node executes automation tasks on remote systems.