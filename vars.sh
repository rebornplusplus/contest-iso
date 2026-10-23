#!/bin/bash

set -eux

DOTS_DIR="dots"
SCRIPTS_DIR="scripts"
ADMIN_SCRIPTS_DIR="postinst/admin/"

ADMIN_USER="admin"
ADMIN_PASSWORD='$1$mIQrBcwa$KLMeQ.2WULC/kBV3BF3Ad1'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

TEAM_USER="contestant"
TEAM_PASSWORD='$1$mIQrBcwa$KLMeQ.2WULC/kBV3BF3Ad1'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

MOCK_USER="mock"
MOCK_PASSWORD='$1$mIQrBcwa$KLMeQ.2WULC/kBV3BF3Ad1'
# encrypted with $(openssl passwd -1 'PLAINTEXTPASSWORD')
