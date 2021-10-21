FROM gitpod/workspace-full

# Copy exercices content into the image
COPY content/ /config/workspace

# Set up the exercices
RUN sudo git config --system user.email "trainee@dataminded.be" && \
    sudo git config --global user.name "Git trainee" && \
    sudo /bin/bash /config/workspace/resources/bootstrap.sh && \
    sudo rm -rf /config/workspace/resources
