# Vagrant Web Project

This Vagrant configuration sets up a virtual machine for your project using the Ubuntu Trusty 64 box. It includes network configurations, port forwarding, and folder syncing.

---

## Box Configuration
```ruby
config.vm.box = "ubuntu/trusty64"
```

## Network Configurations

### Public Network
```ruby
config.vm.network "public_network", ip: "192.168.100.66", bridge: "Intel(R) Wi-Fi 6E AX211 160MHz"
```

This configures a public network with a specified IP and bridge connection. Adjust the IP address and bridge settings according to your requirements.

## Folder Syncing
### Synced Folder
```ruby
config.vm.synced_folder "C:\\Users\\zayda\\Desktop\\project\\web", "/var/www/html"
```

This syncs the local folder on your host machine to the specified folder on the guest machine. Update the paths based on your project structure.

## Provisioning
### Shell Script
```ruby
config.vm.provision "shell", path: "C:\\Users\\zayda\\Desktop\\project\\scripts\\setup.sh"
```

Runs a shell script (setup.sh) during provisioning. Adjust the script path as needed

## Apache Configuration
```ruby
config.vm.provision "shell", inline: "sudo echo \"DocumentRoot /var/www/html/\" >> /etc/apache2/apache2.conf"
```
Configures Apache by appending the DocumentRoot setting to the Apache configuration file.
