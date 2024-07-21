# ADS-B Flight Tracking

This project contains all files and configuration settings to run ADS-B tracking on a Raspberry Pi. Images in use are
provided by [@sdr-enthusiasts](https://github.com/sdr-enthusiasts), specifically
[docker-adsb-ultrafeeder](https://github.com/sdr-enthusiasts/docker-adsb-ultrafeeder) and
[docker-flightradar24](https://github.com/sdr-enthusiasts/docker-flightradar24).

## Setup

Follow the [ADS-B Reception, Decoding & Sharing with Docker](https://sdr-enthusiasts.gitbook.io/ads-b) guide,
specifically:
1. [Blacklist Kernel Modules](https://sdr-enthusiasts.gitbook.io/ads-b/setting-up-rtl-sdrs/blacklist-kernel-modules)
2. [Re-Serialise SDRs](https://sdr-enthusiasts.gitbook.io/ads-b/setting-up-rtl-sdrs/re-serialise-sdrs)
3. [Prepare the Application Environment](https://sdr-enthusiasts.gitbook.io/ads-b/foundations/prepare-the-project-environment) [^1]

## License

For detailed information, refer to [LICENSE](LICENSE) in this folder.

[^1]: This repository contains a `.env` file with some preset environment keys. Create a separate `.env.local` file to
populate any environment keys that need to be kept private (see the `Local Overrides` section in the `.env` file).
