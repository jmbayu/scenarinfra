#!/bin/bash
#
# Setup for persisten volum nfs server

set -euxo pipefail

sudo apt-get install -y nfs-kernel-server


client_ip="${NFS_SHARE_IP}.*"

sudo mkdir /data/scenarios-opensearch-persitence-volume -p
sudo chown nobody:nogroup /data/scenarios-opensearch-persitence-volume
sudo chmod -R 777 /data/

cat >> /etc/exports << EOF
/data/scenarios-opensearch-persitence-volume     *(rw,sync,no_root_squash,no_subtree_check)
EOF

sudo systemctl restart nfs-kernel-server
