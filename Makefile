# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbuker <sbuker@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/13 19:51:39 by sbuker            #+#    #+#              #
#    Updated: 2023/08/13 20:47:46 by sbuker           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

LIBFT = ./libft/libft.a

SRCS = 

OBJS = $(SRCS:%.c=%.o)

CC = gcc

FLAGS = -c -Wall -Werror -Wextra

INCLUDES = -I ./includes

$(NAME): $(OBJS)
	$(MAKE) -C ./libft
	cp libft/libft.a $(NAME)
	$(CC) $(FLAGS) $(SRCS) $(INCLUDES)
	ar rc $(NAME) $(OBJS)

all: $(NAME)

clean:
	$(MAKE) clean -C ./libft
	rm -f $(OBJS)

fclean: clean
	$(MAKE) fclean -C ./libft
	rm -f $(NAME)

re: fclean all