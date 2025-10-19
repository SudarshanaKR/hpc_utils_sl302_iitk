# SSH Key Generation and Config

## Generate SSH Key
Follow instructions here:  
https://www.ssh.com/academy/ssh/keygen

## SSH Config (~/.ssh/config)
Host 172.31.100.240
  HostName 172.31.100.240
  ForwardX11 yes
  User sudarshana

Host mynsm
  HostName paramsanganak.iitk.ac.in
  User skarmakar21
  Port 4422

## Example file transfer
cd /path/to/folder/with/optuna.py
scp optuna.py mynsm:~

