# Custom n8n task-runner image: upstream n8nio/runners plus extra npm packages
# for the Code node. Keep N8N_VERSION equal to the n8n version being deployed.
ARG N8N_VERSION=2.44.7
FROM n8nio/runners:${N8N_VERSION}

USER root

# Extra npm packages available to the JavaScript runner.
# Keep in sync with NODE_FUNCTION_ALLOW_EXTERNAL in n8n-task-runners.json.
RUN cd /opt/runners/task-runner-javascript && pnpm add youtube-transcript

COPY --chown=root:root n8n-task-runners.json /etc/n8n-task-runners.json

USER runner
