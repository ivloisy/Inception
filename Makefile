# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivloisy <ivloisy@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/04 14:57:46 by ivloisy           #+#    #+#              #
#    Updated: 2022/03/18 13:51:29 by ivloisy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DATA=/home/ivloisy/data
YML=./srcs/docker-compose.yml

all: vol #up

vol: del
	mkdir -p $(DATA)/wordpress
	mkdir -p $(DATA)/mariadb
	sudo chown -R ivloisy $(HOME)/data
	sudo chmod -R 755 $(HOME)/data

del:
	rm -rf $(HOME)/wordpress
	rm -rf $(HOME)/mariadb

up:
	docker-compose -f $(YML) up -d --build

down:
	docker-compose -f $(YML) down

clean: down
	docker system prune

re: clean up

.PHONY: all up down clean