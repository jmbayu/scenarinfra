helm repo add opensearch https://opensearch-project.github.io/helm-charts/
helm repo update

helm install scenarios-opensearch opensearch/opensearch --values values.yaml --namespace scenarios
