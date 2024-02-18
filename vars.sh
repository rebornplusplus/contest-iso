#!/bin/bash

set -eux

DOTS_DIR="dots"
SCRIPTS_DIR="scripts"
ADMIN_SCRIPTS_DIR="adm"

ADMIN_USER="admin"
ADMIN_PASSWORD='$1$qOaJpMTn$udSLvrlWWiT43He1M2wy5.'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

TEAM_USER="contestant"
TEAM_PASSWORD='$1$92hYmWFk$qPeMP85ThFuzlKbdgh3cu0'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

MOCK_USER="mock"
MOCK_PASSWORD='$1$MzrwRNfh$km8LUveoj/rZZDZiEA8PB1'
# encrypted with $(openssl passwd -1 'PLAINTEXTPASSWORD')
