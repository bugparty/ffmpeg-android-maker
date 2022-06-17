#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

MBEDTLS_VERSION=v2.28.0

downloadTarArchive \
  "mbedtls" \
  "https://github.com/Mbed-TLS/mbedtls/archive/refs/tags/${MBEDTLS_VERSION}.tar.gz" \
  true