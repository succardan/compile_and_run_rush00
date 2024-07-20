#!/bin/bash

# compile_and_run_rush_00 by dsuccar-
# Se você for da espertolândia, tem como utilizar isso para todos os testes em C com algumas variações.
# CONFIO NO SEU POTENCIAL PARA EXECUTAR A DICA DE CIMA!! ;D

# ELE É PRE-PRONTO PARA O RUSH00.
# O que precisa para este script .sh funcionar:

# 1 - Que a sua PASTA DO REPOSITÓRIO se chame rush00

# 2 - Que a sua PASTA DO REPOSITÓRIO esteja na pasta home (também conhecida por ~/ )

# 3 - Que os exercícios já estejam na pasta de entrega COM O NOME DESCRITO NO SUBJECT

# 4 - Você executa o script .sh seguido de 2 parâmetros:
# 4.1 - parâmetro 1:
# 4.2 - ./compile_and_run.sh <NOME DA PASTA DESCRITA NO SUBJECT> rush00.c

# 5 - Até o momento, ele vai rodar com os parametros que você colocou no "rush(), então para variados testes:
# 5.1 - Edite o arquivo, salve ele e então execute o comando citado no passo 4.2

# Diretório do código-fonte
src_dir1="rush$1"
src_dir2="$2"

# Compilando os arquivos com as flags -Wall -Wextra -Werror
# Nesse caso, eu adiciono o "-o" para que DEPOIS que ele compilar tudo, ele crie uma função executável pra você com um nome
# $src_dir1 é para conseguir pegar a variável src_dir1 criada logo acima
cc -Wall -Wextra -Werror "$src_dir1/main.c" "$src_dir1/ft_putchar.c" "$src_dir1/$1" -o rush_program "$src_dir1/main.c" "$src_dir1/ft_putchar.c" "$src_dir1/$1"

# Executando o que foi TRANSFORMADO em uma função executável
# Na teoria, é um .exe pronto para rodar e após rodar ele joga o output dos programas no console
./rush_program

# Após rodar o programa, como eu criei um executável com o -o, ele acaba criando ele na pasta
# Esse comando é só pra apagar ele da pasta, forçadamente APÓS ele ter sido executado na linha de código anterior (linha 13)
rm -rf rush_program
