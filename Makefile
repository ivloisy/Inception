# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivloisy <ivloisy@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/04 14:57:46 by ivloisy           #+#    #+#              #
#    Updated: 2022/03/18 14:57:08 by ivloisy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DATA=/home/ivloisy/data
YML=./srcs/docker-compose.yml

all: vol #up

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
	docker system prune

re: clean up

.PHONY: all up down clean