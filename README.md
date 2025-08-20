# xrdp-xfce-setup

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

![image](https://github.com/ToshikiNakamura0412/xrdp-xfce-setup/wiki/images/demo.png)

Quick setup script to get XRDP + Xfce running on Ubuntu.

## Environment
- Ubuntu 20.04

## Installation
```bash
git clone https://github.com/ToshikiNakamura0412/xrdp-xfce-setup.git
./xrdp-xfce-setup/setup-xrdp.sh
```

## Usage
- If you use systemd, execute the following commands:
  ```bash
  sudo systemctl start xrdp
  sudo systemctl enable xrdp # Start xrdp on boot
  ```
  **Note**: `systemd` cannot be used inside Docker containers.

- If you do not use systemd, execute the following command:
  ```bash
  ./start-xrdp.sh
  ```

## Demo
1. Start the Docker container
    ```bash
    docker build -t ubuntu-xrdp .
    docker run --rm -it -p 4389:3389 ubuntu-xrdp
    ```

2. Connect to XRDP using a remote desktop client (like Windows App, etc.):
    - Connect to `localhost:4389`
    - Login with username `user` and password `user`
