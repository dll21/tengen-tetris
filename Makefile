build:
	docker build -t tengen-tetris .
up:
	docker run -p 80:8080 tengen-tetris