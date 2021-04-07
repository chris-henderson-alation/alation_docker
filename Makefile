export DOCKER_VERSION=20.10.5
export DOCKER_COMPOSE_VERSION=1.28.2

.PHONY: package
package:
	@make build rpm deb _package_ok

.PHONY: rpm
rpm:
	@docker run --rm -v $(shell pwd):/opt centos:8.1.1911 bash -c "/opt/rhel/build.sh"

.PHONY: deb
deb:
	@docker run --rm -v $(shell pwd):/opt ubuntu:20.04 bash -c "/opt/debian/build.sh"

.PHONY: build
build:
	@mkdir -p target
	@mkdir -p target/filesystem
	@mkdir -p target/filesystem/etc/containerd
	@mkdir -p target/filesystem/usr/bin
	@mkdir -p target/filesystem/usr/lib/systemd/system
	@cd target && \
		curl -O https://download.docker.com/linux/static/stable/x86_64/docker-"${DOCKER_VERSION}".tgz && \
		curl -O https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-"${DOCKER_VERSION}".tgz && \
		tar zxvf docker-${DOCKER_VERSION}.tgz && \
		tar zxvf docker-rootless-extras-${DOCKER_VERSION}.tgz && \
		rm *.tgz
	@curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/run.sh" -o target/filesystem/usr/bin/docker-compose
	@chmod +x target/filesystem/usr/bin/docker-compose
	@docker pull docker/compose:"${DOCKER_COMPOSE_VERSION}"
	@docker save docker/compose:"${DOCKER_COMPOSE_VERSION}" -o target/filesystem/usr/bin/docker-compose-image
	@mv target/docker/* target/filesystem/usr/bin/
	@mv target/docker-rootless-extras/* target/filesystem/usr/bin/
	@cp configurations/containerd/config.toml target/filesystem/etc/containerd/
	@cp systemd/* target/filesystem/usr/lib/systemd/system/
	@rm -rf target/docker
	@rm -rf target/docker-rootless-extras

.PHONY: clean
clean:
	@rm -rf target

.PHONY: _package_ok
_package_ok:
	@echo "\n\033[1;32mPACKAGING OK\033[0m\n"


