#!/bin/sh

mkdir -p ~/.oci
OCI_DIR=$(cd ~/.oci && pwd -P)

echo ${KEY_PEM} > ${OCI_DIR}/key.pem

cat > ~/.oci/config <<EOF
[DEFAULT]
user=${USER_OCID}
fingerprint=${FINGERPRINT}
tenancy=${TENANCY_OCID}
region=ca-toronto-1
key_file=${OCI_DIR}/key.pem

EOF
