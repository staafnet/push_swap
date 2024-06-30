NAME = push_swap
BONUS = checker
CC = cc
CFLAGS = -Wall -Wextra -Werror

SRCS = main.c stack_operations.c sort_algorithm.c utils.c
OBJS = ${SRCS:.c=.o}

BONUS_SRCS = checker.c checker_utils.c
BONUS_OBJS = ${BONUS_SRCS:.c=.o}

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	${CC} ${CFLAGS} ${OBJS} -o ${NAME}

${BONUS}: ${BONUS_OBJS}
	${CC} ${CFLAGS} ${BONUS_OBJS} -o ${BONUS}

all: ${NAME}

bonus: ${BONUS}

clean:
	rm -f ${OBJS} ${BONUS_OBJS}

fclean: clean
	rm -f ${NAME} ${BONUS}

re: fclean all

.PHONY: all bonus clean fclean re