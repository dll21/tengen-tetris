build:
	docker build -t tengen-tetris .
up:
	docker run -p 80:8080 tengen-tetris
helm:
	helm install tengen-tetris-release-1 kubernetes/helm/ --values kubernetes/helm/values.yaml  --namespace challenger-002