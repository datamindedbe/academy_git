FROM theiaide/theia-python:1.15.0

# Copy exercices content into the image
COPY content/ /home/project/

# Set git default config
RUN git config --system init.defaultBranch main && \
    git config --system user.email trainee@dataminded.be

# Set up the exercices
RUN /bin/bash /home/project/resources/bootstrap.sh && \
    rm -rf /home/project/resources

EXPOSE 3000