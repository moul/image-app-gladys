DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-gladys
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Gladys
DESCRIPTION =		Gladys
SOURCE_URL =		https://github.com/scaleway/image-app-gladys


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
