FROM linuxserver/code-server:version-v3.11.1

# Copy exercices content into the image
COPY content/ /config/workspace

# Set up the exercices
RUN git config --system user.email "trainee@dataminded.be" && \
    git config --global user.name "Git trainee" && \
    /bin/bash /config/workspace/resources/bootstrap.sh && \
    rm -rf /config/workspace/resources

EXPOSE 8443