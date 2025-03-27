#!/bin/bash

# Exit on any error
set -e

# Update system packages
echo "Updating system packages..."
sudo yum update -y

# Install Java 8 (required for Nexus)
echo "Installing Java 8..."
sudo yum install -y java-1.8.0-openjdk-devel

# Create a nexus user
echo "Creating Nexus user..."
sudo useradd -m -d /opt/nexus -s /bin/bash nexus

# Download Nexus Repository Manager
echo "Downloading Nexus..."
cd /tmp
NEXUS_VERSION="3.66.0-02"  # Change this to the latest version if needed
wget -q https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz

# Extract Nexus and move it to /opt
echo "Extracting Nexus..."
sudo tar -xzf nexus-${NEXUS_VERSION}-unix.tar.gz -C /opt
sudo mv /opt/nexus-${NEXUS_VERSION} /opt/nexus

# Set permissions
echo "Setting up permissions..."
sudo chown -R nexus:nexus /opt/nexus
sudo chown -R nexus:nexus /opt/sonatype-work

# Configure Nexus to run as the nexus user
echo "Configuring Nexus service..."
echo 'run_as_user="nexus"' | sudo tee -a /opt/nexus/bin/nexus.rc

# Create a systemd service for Nexus
sudo tee /etc/systemd/system/nexus.service > /dev/null <<EOF
[Unit]
Description=Nexus Repository Manager
After=network.target

[Service]
Type=forking
User=nexus
Group=nexus
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
Restart=on-abort

[Install]
WantedBy=multi-user.target
EOF

# Enable and start the Nexus service
echo "Starting Nexus service..."
sudo systemctl daemon-reload
sudo systemctl enable nexus
sudo systemctl start nexus

# Open Nexus port in firewall
echo "Configuring firewall..."
sudo firewall-cmd --permanent --add-port=8081/tcp
sudo firewall-cmd --reload

echo "Nexus installation completed!"
echo "Access Nexus at: http://<EC2-PUBLIC-IP>:8081"
