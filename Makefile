init:
	sudo mkdir -p /srv/youtrack/{data,conf,logs,backups}
update:
	docker pull jetbrains/youtrack:latest
start:
	docker network create jnet
	docker compose up -d
healthcheck:
	curl localhost:8080