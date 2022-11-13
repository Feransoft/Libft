# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frueda-m <frueda-m@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 14:51:32 by frueda-m          #+#    #+#              #
#    Updated: 2022/11/13 17:47:07 by frueda-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = 				ft_isalnum.c ft_isprint.c ft_memcmp.c ft_strjoin.c ft_strtrim.c ft_putendl_fd.c \
					ft_strlcat.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_split.c ft_putstr_fd.c \
					ft_memcpy.c ft_strchr.c  ft_strlcpy.c ft_substr.c ft_strmapi.c ft_itoa.c \
					ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c ft_striteri.c ft_putnbr_fd.c \
					ft_memmove.c ft_strdup.c  ft_strlen.c  ft_strrchr.c ft_putchar_fd.c \
					ft_toupper.c ft_calloc.c  ft_isdigit.c ft_memchr.c  ft_memset.c

SRC_BONUS = 		ft_lstnew.c  ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
					ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJ = ${SRC:.c=.o}

OBJ_BONUS = ${SRC_BONUS:.c=.o}

CFLAGS = -Wall -Werror -Wextra

COMPILE = gcc $(CFLAGS) -c

LIB = ar rc $(NAME)

RANLIB = ranlib $(NAME)

REMOVE = rm -f

all: $(NAME)

$(NAME):
	@$(COMPILE) $(SRC)
	@$(LIB) $(OBJ)
	@$(RANLIB)

bonus:
	@$(COMPILE) $(SRC_BONUS)
	@$(LIB) $(OBJ_BONUS)
	@$(RANLIB)

clean:
	@$(REMOVE) $(OBJ)

fclean: clean
	@$(REMOVE) $(NAME)

re: fclean all

.PHONY: all clean fclean re
