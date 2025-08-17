# https://www.linkedin.com/pulse/update-alternatives-quick-reference-guide-syed-sadiq-ali-ifw4c/


# Register new alternative
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-8/bin/java 1081

# See current configuration
sudo update-alternatives --display java

# Interactive selection menu
sudo update-alternatives --config java

# Force specific choice (manual mode)
sudo update-alternatives --set java /usr/lib/jvm/java-8/bin/java

# Auto-select highest priority
sudo update-alternatives --auto java

# List all managed alternatives
sudo update-alternatives --get-selections
