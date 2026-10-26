# n8n-runners

Custom `n8nio/runners` image with extra npm packages for the n8n Code node.

- Extra packages: `youtube-transcript` (see `Dockerfile` and `n8n-task-runners.json`).
- Image: `ghcr.io/debugger24/n8n-runners:<n8n version>` (linux/amd64, linux/arm64).

To bump: set `N8N_VERSION` in `.github/workflows/build.yml` and the default in `Dockerfile` to the n8n version deployed in homelab-v3, then push to `main`.
To add a package: add it to the `pnpm add` line and to `NODE_FUNCTION_ALLOW_EXTERNAL`.
