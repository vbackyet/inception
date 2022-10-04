name = "Puk"
all:
	@printf "Запуск конфигурации ${name}...\n"
	@docker run -p 80:80 nginx

build:

down:

re:


clean:


fclean:

.PHONY	: all build down re clean fclean