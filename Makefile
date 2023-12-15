all:
		@sudo hostsed add 127.0.0.1 tstrassb.42.fr && echo "tstrassb.42.fr added to '/etc/hosts'"
		sudo docker compose -f ./srcs/docker-compose.yml up -d

clean:
		sudo docker compose -f ./srcs/docker-compose.yml down --rmi all -v

fclean:	clean
		@sudo hostsed rm 127.0.0.1 tstrassb.42.fr && echo "tstrassb.42.fr removed from '/etc/hosts'"
		@if [ -d "/home/ubuntu-docker/documents/wp" ]; then \
		sudo rm -rf /home/ubuntu-docker/documents/wp/* && \
		echo "removed contents of '/home/ubuntu-docker/documents/wp/"; \
		fi;

		@if [ -d "/home/ubuntu-docker/documents/db" ]; then \
		sudo rm -rf /home/ubuntu-docker/documents/db/* && \
		echo "removed contents of '/home/ubuntu-docker/documents/db/"; \
		fi;

re:		fclean all

ls:
		sudo docker image ls
		sudo docker ps