COMMIT_SHA:=$(shell git rev-parse HEAD)
COMMIT_TAG:=$(shell git describe --tags --abbrev=0)

_opt:
	rm -rf _opt/ 2>/dev/null || true
	./build-opt $(COMMIT_TAG)

docker:_opt
	docker build \
			--platform linux/amd64  \
			--label ade_image_commit_sha="$(COMMIT_SHA)" \
			--label ade_image_commit_tag="$(COMMIT_TAG)" \
			-t ignaciovizzo/ade-nvim . \

run:
	docker run --platform linux/amd64 --rm -it ignaciovizzo/ade-nvim:latest
