build:
	docker build --platform linux/amd64 -t ade-nvim:latest .

run:
	docker run --platform linux/amd64 --rm -it ade-nvim:latest
