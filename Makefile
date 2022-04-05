# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivloisy <ivloisy@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/04 14:57:46 by ivloisy           #+#    #+#              #
#    Updated: 2022/04/05 12:50:26 by ivloisy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DATA=/home/ivloisy/data
YML=./srcs/docker-compose.yml

all: vol up

vol: del
	mkdir -p $(DATA)/wordpress
	mkdir -p $(DATA)/mariadb
	sudo chown -R ivloisy $(DATA)
	sudo chmod -R 755 $(DATA)

del:
	sudo rm -rf $(DATA)/wordpress
	sudo rm -rf $(DATA)/mariadb

up:
	docker-compose -f $(YML) up -d --build

down:
	docker-compose -f $(YML) down

clean: down
	docker system prune -f

fclean: clean
	docker system prune -af
	docker volume rm srcs_db_volume
	docker volume rm srcs_wp_volume

re: clean all

.PHONY: all up down clean fclean re
