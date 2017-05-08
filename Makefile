# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: heynard <heynard@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/12 15:01:03 by heynard           #+#    #+#              #
#    Updated: 2017/05/06 16:18:16 by heynard          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = gcc

FLAGS = -Wall -Wextra -Werror

PATH_SRC = ./srcs/
PATH_LIB = ./lib/

FILES_SRC = ft_printf.c\
		parse_arg.c\
		parse_arg_type.c\
		parse_arg_precision.c\
		parse_arg_modifier.c\
		parse_arg_min.c\
		parse_arg_flags.c\
		print_buffer.c\
		write_arg_in_buffer.c\
		write_sint_in_buffer.c\
		write_uint_in_buffer.c\
		write_hexa_in_buffer.c\
		write_octa_in_buffer.c\
		write_char_in_buffer.c\
		write_str_in_buffer.c\
		write_ptr_in_buffer.c\
		write_wchar_in_buffer.c\
		write_wstr_in_buffer.c\
		write_bin_in_buffer.c

FILES_LIB = ft_isdigit.c\
			ft_isdigit_nozero.c\
			ft_rev_nbr.c\
			ft_count_nb.c\
			ft_strlen.c

SRC = $(addprefix $(PATH_SRC), $(FILES_SRC))
LIB = $(addprefix $(PATH_LIB), $(FILES_LIB))


OBJ = $(SRC:.c=.o)
OBJ_LIB = $(LIB:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(OBJ_LIB)
	@ar rc $(NAME) $^
	@ranlib $(NAME)
	@echo "\033[1;34mft_printf\t\033[1;33mBuilding\t\t\033[0;32m[OK]\033[0m"

%.o: %.c
	@$(CC) -Os -o $@ -c $< $(CFLAGS)

.PHONY: all clean fclean re

clean:
	@rm -f $(OBJ) $(OBJ_LIB)
	@echo "\033[1;34mft_printf\t\033[1;33mCleaning objects\t\033[0;32m[OK]\033[0m"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[1;34mft_printf\t\033[1;33mCleaning libftprintf.a\t\033[0;32m[OK]\033[0m"

re: fclean all
