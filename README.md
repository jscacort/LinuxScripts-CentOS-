# LinuxScripts-CentOS-
LinuxScripts(CentOS): Explore and contribute CentOS-specific scripts for efficient system management and automation. 

These

Table of Contents
1. Installation & Pre-requisits
2. Usage
3. Configuration
4. Contributors
5. License
6. Acknowledgements
7. Contact Information

1. Installation & Pre-requisits
You may use and install the bashs scripts on your system however you may desire. However, if you are working on a remote server, and in order to work with Visual Studio you can choose to either connect directly via .ssh and/or you can upload scripts to a desired folder on your server via sftp.

Make sure you have downloaded the required software and extensions. To work on bash code in Visual Studio. You must have the following installed:
- SSH Windows 11
- Microsoft Visual Studio
    - sftp (extension)

2. Usage
You may use and install the bashs scripts on your system however you may desire.

3. Configuration
- SFTP Configuration: Please copy and paste the following on the .json file of the sftp extension

    {
    "name": "Name_of_your_system",
    "host": "host_ip_address",
    "protocol": "sftp",
    "port": 22,
    "username": "username",
    "remotePath": "./path",
    "uploadOnSave": true,
    "useTempFile": false,
    "openSsh": false
    }

4. Contributors
Thank you to all contributors that put together these scripts:
- Juan Cortes

5. License
MIT License

6. Acknowledgments
The create of these scripts are thanks to the Udemy Course: Complete Linux Training Course

7. Contact Information
If you wish to reach me, please reach out to my business address: TBD


NOTE: This README File work is still in progress