#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -euo pipefail

DEVICE=a35x
VENDOR=samsung

# Load extract_utils and do some sanity checks
MY_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [[ ! -f "${HELPER}" ]]; then
    echo "Unable to find helper script at ${HELPER}" >&2
    exit 1
fi
source "${HELPER}"

# Initialize the helper and generate vendor makefiles for the A35.
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}"

write_headers
write_makefiles "${MY_DIR}/proprietary-files.txt" true
write_footers
