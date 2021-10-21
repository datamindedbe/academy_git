FROM gitpod/workspace-full

# Copy exercices content into the image
COPY content/ /workspace

USER root

RUN git config --system user.email "trainee@dataminded.be" && \
    git config --global user.name "Git trainee" && \
    git config --global init.defaultBranch master && \
    chown -R gitpod /workspace

USER gitpod

# Set up the exercices
RUN /bin/bash /workspace/resources/bootstrap.sh && \
    sudo rm -rf /workspace/resources
