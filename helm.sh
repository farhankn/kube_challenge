#install Helm Package using Snap
sudo snap install helm --classic

#add Harbor Repository
helm repo add harbor https://helm.goharbor.io

#install helm with Password Challenge@2021
helm install --set=expose.type=nodePort --set=expose.tls.enabled=false --set harborAdminPassword=Challenge@2021 my-release harbor/harbor
