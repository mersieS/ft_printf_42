NAME = libftprintf.a

LIBFT = ./libft/libft.a

SRCS = ./src/ft_print_hex.c ./src/ft_print_ptr.c ./src/ft_printf.c ./src/ft_print_unsigned.c ./src/ft_printf_funcs.c

OBJS = $(SRCS:.c=.o)

CC = gcc

FLAGS = -Wall -Werror -Wextra

$(NAME): $(OBJS)
	$(MAKE) -C ./libft
	cp $(LIBFT) $(NAME)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	$(MAKE) clean -C ./libft
	rm -f $(OBJS)

fclean: clean
	$(MAKE) fclean -C ./libft
	rm -f $(NAME)

re: fclean all
