#!/bin/sh

mkdir -p ~/.oci

echo ${KEY_PEM} > ~/.oci/key.pem

cat > ~/.oci/config <<EOF
[DEFAULT]
user=${USER_OCID}
fingerprint=${FINGERPRINT}
tenancy=${TENANCY_OCID}
region=ca-toronto-1
key_file=/usr/home/emaste/.oci/key.pem

EOF
