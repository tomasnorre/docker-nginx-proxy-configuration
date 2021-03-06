init:
	docker network create proxy
up:
	docker-compose build
	docker-compose up -d
	docker-compose ps
kill:
	docker-compose kill
down:
	docker-compose down --remove-orphans
log:
	docker-compose logs -f --tail=1000
update-ca:
	cp ./data/ca/* /etc/pki/ca-trust/source/anchors/
	update-ca-trust
