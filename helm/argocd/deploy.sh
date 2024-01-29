helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm install scenarios-argocd argo/argo-cd --values values.yaml --namespace scenarios
