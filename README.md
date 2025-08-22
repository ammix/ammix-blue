# ammix-blue &nbsp; [![bluebuild build badge](https://github.com/ammix/ammix-blue/actions/workflows/build.yml/badge.svg)](https://github.com/ammix/ammix-blue/actions/workflows/build.yml)

My personal image based on Fedora Silverblue

## Installation

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image:

  ```bash
  sudo bootc switch ghcr.io/ammix/ammix-blue:latest
  ```

- Reboot to complete the rebase:

  ```bash
  systemctl reboot
  ```

- Then rebase to the signed image, like so:

  ```bash
  sudo bootc switch --enforce-container-sigpolicy ghcr.io/ammix/ammix-blue:latest
  ```

- Reboot again to complete the installation

  ```bash
  systemctl reboot
  ```

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign).
You can verify the signature by downloading the `cosign.pub` file from this repo
Running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/ammix/ammix-blue
```
