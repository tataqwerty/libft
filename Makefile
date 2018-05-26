# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkiselev <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/22 20:42:59 by tkiselev          #+#    #+#              #
#    Updated: 2018/05/26 20:12:36 by tkiselev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=gcc -Wall -Wextra -Werror
NAME=libft.a
SRCS=ft_atoi.c ft_btree_apply_infix.c ft_btree_apply_infix_reverse.c ft_btree_apply_postfix.c ft_btree_apply_prefix.c ft_btree_create_node.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_itoa_base.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c ft_list_remove_if.c get_next_line.c ft_remalloc.c ft_bytes.c ft_strjoinfree.c ft_strccmp.c
OBJ=$(SRCS:.c=.o)
	
all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

%.o: %.c
	$(CC) -c $< -o $@ -I.

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all
