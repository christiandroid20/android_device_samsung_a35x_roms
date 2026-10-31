# Samsung Galaxy A35 5G — LineageOS device tree

Device tree for the Samsung Galaxy A35 5G, codename `a35x`, SoC Exynos 1380
(platform `erd8835`).

## Target device

- Model: **SM-A356E**
- Device codename: `a35x`
- Board/platform: `s5e8835` / `erd8835`

This repository is configured for the SM-A356E. Do not assume that blobs,
partition layouts, or firmware from SM-A356B are interchangeable without
checking the exact hardware revision and firmware package.

## Proprietary vendor files

The proprietary blob list must be extracted from a matching SM-A356E stock
firmware/device. The current blob manifest is an inherited baseline and must
be audited against the selected firmware before it is treated as build-ready.

From an initialized Android source tree, with the device connected and
USB debugging authorized:

```sh
cd device/samsung/a35x
./extract-files.sh
```

To extract from an unpacked firmware/vendor image, use the extraction helper's
supported source format and verify every listed blob against the same firmware
build. Do not mix blobs from different bootloader/vendor generations.

## Build notes

- The product makefile is `lineage_a35x`.
- Dynamic partitions are enabled.
- Kernel and DTB/DTBO prebuilts are currently selected by `BoardConfig.mk`.
- Filesystem format and Android release compatibility must be validated
  against the selected LineageOS/AOSP branch before building.

## Safety

Keep firmware-specific proprietary files and prebuilts out of unverified
cross-device substitutions. Validate boot, display/touch, audio, camera,
Wi-Fi, Bluetooth, GNSS, NFC, sensors, fingerprint/KeyMint and encryption
before considering a build usable.
