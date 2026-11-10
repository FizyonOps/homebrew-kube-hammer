# Homebrew tap for Kube Hammer

[Kube Hammer](https://hammer.fizyonops.com/) is a Kubernetes desktop for macOS, Windows and Linux: pods, logs, shell, YAML, Helm and RBAC in one window, a snapshot before every change, no account, zero telemetry.

```sh
brew install --cask fizyonops/kube-hammer/kube-hammer
```

The cask installs the signed and notarized DMG from the same bucket the app's own updater uses. Apple Silicon and Intel builds are both covered; Homebrew picks the right one.

Upgrade with `brew upgrade --cask kube-hammer`, or let the app update itself (`auto_updates true`).

The Community edition is free for individuals and companies of any size. Pro is $7/month or $70/year. Plans: https://hammer.fizyonops.com/#pricing
