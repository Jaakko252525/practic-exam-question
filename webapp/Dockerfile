# Use the official Jenkins image as the base
FROM jenkins/jenkins:lts

# Install Git and Blue Ocean plugin dependencies
USER root
RUN apt-get update && apt-get install -y git && apt-get clean

# Install Blue Ocean plugin
RUN jenkins-plugin-cli --plugins blueocean

# Copy the Git configuration script
COPY configure-git.sh /usr/local/bin/configure-git.sh

# Run chmod to make the script executable
RUN chmod +x /usr/local/bin/configure-git.sh

# Switch back to Jenkins user
USER jenkins

# Run the Git configuration script during startup
ENTRYPOINT ["/usr/local/bin/configure-git.sh"]
