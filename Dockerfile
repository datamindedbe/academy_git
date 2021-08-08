FROM theiaide/theia-python:1.15.0

# Copy exercices content into the image
COPY content/ /home/project/

# Set up the exercices
RUN git config --system user.email trainee@dataminded.be && \
    /bin/bash /home/project/resources/bootstrap.sh && \
    rm -rf /home/project/resources

EXPOSE 3000