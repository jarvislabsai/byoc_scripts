SSH_KEY=hello
bash -c 'echo "$SSH_KEY" | tee -a ~/.ssh/authorized_keys' && \
    chmod 600 ~/.ssh/authorized_keys && \
    bash -c 'echo "$SHELL"'


