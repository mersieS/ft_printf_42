# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbuker <sbuker@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/13 19:51:39 by sbuker            #+#    #+#              #
#    Updated: 2023/08/13 19:55:54 by sbuker           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = 

OBJS = $(SRCS:%.c=%.o)

FLAGS = -Wall -Werror -Wextra

$(NAME):
	gcc $(FLAGS) -c $(SRCS) -I ./
	ar rc $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all