# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivloisy <ivloisy@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/04 14:57:46 by ivloisy           #+#    #+#              #
#    Updated: 2022/03/05 02:27:58 by ivloisy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

YML=./srcs/docker-compose.yml

all: up

up:
	docker-compose -f $(YML) up -d --build

down:
	docker-compose -f $(YML) down

clean: down
	docker system prune

re: clean up

.PHONY: all up down clean