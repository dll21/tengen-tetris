docker-build:
	docker build -t tengen-tetris .
docker-up:
	docker run -p 80:8080 tengen-tetris
# make helm-install RELEASE=tengen-tetris-release-n NAMESPACE=default
helm-install:
	helm install  $(RELEASE) kubernetes/helm/ --values kubernetes/helm/values.yaml  --namespace  $(NAMESPACE)
# make helm-upgrade RELEASE=tengen-tetris-release-n NAMESPACE=default
helm-upgrade:
	helm upgrade  $(RELEASE) kubernetes/helm/ --values kubernetes/helm/values.yaml  --namespace  $(NAMESPACE)