# Simple Vagrant LAMP server

Provides a basic LAMP server for local development with Debian 9, Apache 2.4, MariaDB 10.1, PHP 7.0 and XDebug.

## Getting Started

Clone, run ``` vagrant up ``` and start developing. If everything goes 
well and there weren't any port conflicts (see Vagrant output), you should see phpinfo() in http://localhost:8080

### Prerequisites

VirtualBox and Vagrant with vagrant-vbguest plugin. When VirtualBox and Vagrant is installed, open your terminal/command line and type:
```
vagrant plugin install vagrant-vbguest
```


## Authors

* **Jani Yli-Paavola** - [jylipaa](https://github.com/jylipaa)

## License

This project is licensed under the MIT License

