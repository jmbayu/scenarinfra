helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install scenarios-rabbitmq bitnami/rabbitmq-cluster-operator --values values.yaml --namespace scenarios

