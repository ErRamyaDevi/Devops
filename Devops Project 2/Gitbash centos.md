$touch Nexus-setup.sh
$echo '<code>' > Nexus-setup.sh
$chmod u+x Nexus-setup.sh
[ec2-user@ip-10-0-6-60 ~]$ scp -i ~/.ssh/Devops.pem Nexus-setup.sh ec2-user@3.144.115.184<publicIP> [transfers code to centos EC2 machine]
[ec2-user@ip-10-0-6-60 ~]$ chmod +x Nexus-setup.sh(executable permission)
[ec2-user@ip-10-0-6-60 ~]$ sudo ./Nexus-setup.sh (execute)

## **How to Use**
#### 1. Upload the script to your EC2 instance or create it manually:

```
nano install_nexus.sh
```
Paste the script inside, then save and exit (CTRL + X, then Y, then ENTER).

#### 2.Make it executable:

```
chmod +x install_nexus.sh
```
#### 3.Run the script:

```
sudo ./install_nexus.sh
```
#### 4.Check Nexus Status:

```
sudo systemctl status nexus
```
## **Access Nexus Repository**
+ URL: http://EC2-PUBLIC-IP:8081
+ Default credentials: Username:admin Password: Found in /opt/sonatype-work/nexus3/admin.password
  
```
sudo cat /opt/sonatype-work/nexus3/admin.password
```
