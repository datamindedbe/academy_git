FROM gitpod/workspace-full

USER root

RUN git config --system user.email "trainee@dataminded.be" && \
    git config --global user.name "Git trainee" && \
    git config --global init.defaultBranch master

USER gitpod