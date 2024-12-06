# gitea

![Build, scan & push](https://github.com/Polarix-Containers/gitea/actions/workflows/build.yml/badge.svg)

### Features & usage
- Built on the [official rootless gitea image](https://github.com/go-gitea/gitea/blob/main/Dockerfile.rootless), to be used as a drop-in replacement. Comes with regular rebuilds and hardened_malloc which are standard among Polarix containers.
- Unprivileged image: you should check your volumes' permissions (eg `/data`), default UID/GID 3002.

### Licensing
- The code in this repository is licensed under the Apache license. 😇
- Gitea is under the MIT license. Copyright to Gitea belongs to the Gitea project.
- Any image built by Polarix Containers is provided under the combination of license terms resulting from the use of individual packages.
