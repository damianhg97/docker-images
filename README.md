# Docker Images

Docker images built from this repository and published to Docker Hub with GitHub Actions.

## Available Images

| Image | Contents | Pull command |
| --- | --- | --- |
| `ubuntu-tools` | Ubuntu 24.04 with Git, curl, CA certificates, and yq | `docker pull <DOCKERHUB_USERNAME>/ubuntu-tools:latest` |

Replace `<DOCKERHUB_USERNAME>` with your Docker Hub username. The `latest` tag is published from pushes to `main`; version and commit SHA tags are also generated.

## Configure GitHub Actions

Add these repository secrets under **Settings > Secrets and variables > Actions**:

| Secret | Value |
| --- | --- |
| `DOCKERHUB_USERNAME` | Your Docker Hub username |
| `DOCKERHUB_TOKEN` | A Docker Hub access token with permission to push images |

## Add Another Image

1. Create a directory under `images/`, such as `images/my-tools/`, and add its `Dockerfile`.
2. Add `my-tools` to the `image` list in `.github/workflows/docker-build-push.yml`. The workflow uses `images/<name>` as the build context and `<DOCKERHUB_USERNAME>/<name>` as the Docker Hub repository.
3. Add the image and its pull command to the table above.
4. Push the changes to `main` or start the workflow manually from the **Actions** tab.

The workflow also runs for version tags beginning with `v`, such as `v1.0.0`.