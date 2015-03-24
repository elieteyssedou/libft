# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <eteyssed@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/13 20:11:17 by eteyssed          #+#    #+#              #
#    Updated: 2014/11/13 20:11:25 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a
SRC		=	ft_bzero.c ft_memset.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
			ft_memchr.c ft_memcmp.c \
			ft_strdup.c ft_strlen.c \
			ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c \
			ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_strncmp.c \
			ft_strnstr.c ft_strcmp.c \
			ft_atoi.c \
			ft_tolower.c ft_toupper.c ft_isprint.c ft_isascii.c \
			ft_isdigit.c ft_isalnum.c ft_isalpha.c \
			ft_memalloc.c ft_memdel.c \
			ft_strnew.c ft_strclr.c ft_strdel.c ft_strequ.c ft_striter.c \
			ft_striteri.c ft_strjoin.c ft_strmap.c ft_strmapi.c ft_strnequ.c \
			ft_strsplit.c ft_strsub.c ft_strtrim.c ft_itoa.c \
			ft_putchar.c ft_putstr.c ft_putnbr.c ft_putendl.c \
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
			ft_lstdelone.c ft_lstnew.c ft_lstdel.c ft_lstadd.c ft_lstiter.c \
			ft_strcut.c ft_strrcut.c ft_lstpushback.c ft_lstsmartpushback.c \
			ft_burger.c ft_lstmap.c

OBJ	=		$(SRC:.c=.o)
FLAGS =		-Wall -Wextra -Werror
CC	=		gcc

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

%.o: %.c
	@$(CC) $(FLAGS) -I. -o $@ -c $? 

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

test:
	@curl -s https://raw.githubusercontent.com/elieteyssedou/To-Curl/master/main3.c > main1.c
	$(CC) $(FLAGS) $(NAME) main1.c -I.
	./a.out
	@rm a.out
	@rm main1.c

test2:
	@curl -s https://raw.githubusercontent.com/elieteyssedou/To-Curl/master/main2.c > main2.c
	$(CC) $(FLAGS) $(NAME) main2.c -I.
	./a.out
	@rm a.out
	@rm main2.c

re: fclean all