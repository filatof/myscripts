META=$1
yc compute instance create \
  --name react \
  --hostname  react \
  --zone ru-central1-a \
  --network-interface subnet-name=pub-subnet,nat-ip-version=ipv4 \
  --preemptible \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-2204-lts,size=10GB \
  --platform standard-v1 \
  --cores 2 \
  --core-fraction 5 \
  --memory 1GB \
  --metadata-from-file user-data=$META
