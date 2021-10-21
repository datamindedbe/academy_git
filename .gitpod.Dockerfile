FROM gitpod/workspace-full

USER root

RUN git config --system user.email "trainee@dataminded.be" && \
    git config --global user.name "Git trainee" && \
    git config --global init.defaultBranch master

USER gitpod

# Copy exercices content into the image
COPY --chown=gitpod content/ /workspace/git-exercices

# Set up the exercices
RUN /bin/bash /workspace/git-exercices/resources/bootstrap.sh && \
    rm -rf /workspace/git-exercices/resources
