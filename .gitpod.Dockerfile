FROM gitpod/workspace-full

USER root

RUN git config --system user.email "trainee@dataminded.be" && \
    git config --global user.name "Git trainee" && \
    git config --global init.defaultBranch master

USER gitpod

# Copy exercices content into the image
COPY --chown=gitpod content/ /home/gitpod/git-exercices

# Set up the exercices
RUN /bin/bash /home/gitpod/git-exercices/resources/bootstrap.sh && \
    sudo rm -rf /home/gitpod/git-exercices/resources