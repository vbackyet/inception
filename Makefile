name = "Puk"
all:
	@printf "Запуск конфигурации ${name}...\n"
	@docker-compose -f ./docker-compose.yml up -d --build

build:

down:

re:


clean:


fclean:

.PHONY	: all build down re clean fclean