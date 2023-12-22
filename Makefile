DIR		= /home/root/documents

all:		dir
		@sudo hostsed add 127.0.0.1 tstrassb.42.fr && echo "tstrassb.42.fr added to '/etc/hosts'"
		sudo docker compose -f ./srcs/docker-compose.yml up -d mariadb portainer adminer
		@echo "waiting for mariadb to finish setup..."
		@sleep 5
		sudo docker compose -f ./srcs/docker-compose.yml up -d wordpress nginx redis ftp-docker

clean:
		sudo docker compose -f ./srcs/docker-compose.yml down --rmi all -v

fclean:	clean
		@sudo hostsed rm 127.0.0.1 tstrassb.42.fr && echo "tstrassb.42.fr removed from '/etc/hosts'"
		@if [ -d "/home/root/documents/wp" ]; then \
		sudo rm -rf /home/root/documents/wp/* && \
		echo "removed contents of '/home/root/documents/wp/"; \
		fi;

		@if [ -d "/home/root/documents/db" ]; then \
		sudo rm -rf /home/root/documents/db/* && \
		echo "removed contents of '/home/root/documents/db/"; \
		fi;

dir:
		@sudo mkdir --verbose --parent $(DIR)
		@sudo mkdir --verbose --parent $(DIR)/db
		@sudo mkdir --verbose --parent $(DIR)/wp

log:
		@docker compose -f ./srcs/docker-compose.yml logs | less

sprunea:
		@docker system prune -a

re:		fclean all

ls:
		sudo docker image ls
		sudo docker ps

restart:
		sudo docker compose -f ./srcs/docker-compose.yml restart portainer