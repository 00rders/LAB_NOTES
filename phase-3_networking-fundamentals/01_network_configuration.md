# Module 01: Network Configuration

## 🧩 Context
In this module, I focused on configuring a **static IP address** on my Kali Linux VM and tested network connectivity. This is a foundational skill for setting up a machine on a network, whether it's for a web server, a local server, or just a device that needs consistent access on the network.

I also tested basic **network connectivity**, checked for open ports and services using **`nmap`**, and explored the **firewall** status (`ufw`).

## 🔧 What I Did

### 1. **Configured a Static IP**
I manually configured the IP address on my VM’s `eth0` network interface using a **static IP** of `192.xxx.x.xxx/24`.

- The **subnet mask** used is `/24`, meaning the network range is `192.xxx.x.x/24`.
- Set the **default gateway** to `192.xxx.x.x`(was already set)

```bash
sudo ip addr add 192.XXX.X.XXX/24 dev eth0
sudo ip route add default via 192.xxx.x.x
```
### 2. **Tested Network Connectivity**
After setting the static IP, I tested the connectivity

- **Pinged** the **default gateway**
  ```bash
  ping 192.xxx.x.x
  ```
- **Pinged** an **external server** (8.8.8.8 = Googles DNS Server; commonly used to verify internet connectivity)
  ```bash
  ping 8.8.8.8
  ```

### 3. **Checked for Open Ports and Services with `nmap`**:
I ran an nmap scan to detect open ports and services in my network

- **Ping Scan**: Scanned the `192.xxx.x.x/24` range to find active hosts (doesn't scan ports):
  ```bash
  nmap -sn 192.xxx.xxx.x.x/24
  ```
- **Service Scan**: Ran a port scan and service detection on my VM
  ```bash
  nmap -sV 192.xxx.x.xxx
  ```

### 4. **Firewall Status**:
I checked the staus of the firewall using `ufw` (uncomplicated firewall) and found it to be **active**, explaining why my scans were returning "all ports closed"
```bash
sudo ufw disable
```

## 🧠 What I Learned
- **Network Configuration**: I learned how to configure a **static IP**, set the **default gateway**, and verify the network configuration.
- **Network Troubleshooting**: I practiced troubleshooting network connectivity using **ping** and **nmap**.
- **Firewall and Services**: I explored the status of the firewall and learned how to start and stop services like **Apache**, **Nginx**, and **SSH**.
- **Service Scanning**: I used **`nmap`** to scan for open ports and identify active services running on the network.


## 🔒 Why It Matters
- **Real-World Application**: This is a foundational skill in network administration and cybersecurity. Configuring static IPs, verifying connectivity, and managing services are essential tasks in maintaining and securing a networked system.
- **Troubleshooting**: These tasks help develop skills needed for **diagnosing and resolving** network connectivity issues and ensuring that services are properly configured.
- **Security**: Understanding how to properly configure **SSH** and manage firewalls is key to securing remote access and services.


## 🌍 Real-World Application Scenario(s)
- **Network Configuration**: In a real-world scenario, this skill is used when setting up **servers**, **routers**, or other network devices that need consistent access on the network. Properly configuring a static IP is essential to ensure reliable connectivity, especially for **business-critical applications** or **servers** that cannot rely on dynamically assigned IPs.
  
- **Troubleshooting**: This knowledge is crucial for **network administrators** who must diagnose issues related to connectivity, service availability, and network performance. Knowing how to verify IP configuration, test connectivity, and identify blocked or closed ports is a critical part of resolving network problems quickly.

- **Security**: Properly securing services like **SSH** and managing firewalls helps prevent unauthorized access to critical systems. In **cybersecurity**, this is essential to protect against **remote attacks** and **unauthorized access**, which could lead to data breaches or system compromises.

