NAME = libftprintf.a

LIBFT = ../libft/libft.a

SRCS = ft_print_hex.c ft_print_ptr.c ft_printf.c ft_print_unsigned.c

OBJS = $(SRCS:%.c=%.o)

CC = gcc

FLAGS =  -Wall -Werror -Wextra


$(NAME): $(OBJS)
	$(MAKE) -C ../libft
	$(CC) $(LIBFT) $(FLAGS) $(SRCS) 
	
all: $(NAME)

clean:
	$(MAKE) clean -C ../libft
	rm -f $(OBJS)

fclean: clean
	$(MAKE) fclean -C ../libft
	rm -f $(NAME)

re: fclean all