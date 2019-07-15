# DevLaravel

Este Repositório cria uma aplicação inicial em **Laravel**.

São adicionadas as seguintes ferramentas:

* MySQL
* PHP 7.*
* PHP Composer
* Java Runtime Environment

Tópicos
1. Configuração do Banco de Dados
1. Configurações do Sistema
1. Criando um projeto Laravel

## Configuração do Banco de Dados

O SGBD utilizado é o **MySQL**, as configurações de acesso do banco são 
apresentadas a seguir:
```
$ DATABASE_USER='dev'
$ DATABASE_PASSWORD='dev123'
```

#### Configurações 
Para configurar o nome do banco a ser criado acesse o arquivo: **bd/database.sh**


Para importar um banco de dados é necessário alterar o arquivo: **bd/db.ledes.net.dump** 
para incluir o banco desejado.
Veja como criar um dump de um banco PostgreeSQL já existente em:
[Backup Dump](https://www.postgresql.org/docs/9.1/static/backup-dump.html)

É possível também realizar a configuração do banco via Migrate
Veja: https://laravel.com/docs/5.4/migrations

#### Acesso
Para acessar o MySQL por linha de comando:
mysql -U dev -W --dbname=nome_banco
Informar senha

## Configurações do Sistema
A máquina pode ser acessada através do comando **vagrant ssh**

As configurações básicas do sistema são encontradas em: **vagrant/config/configuracoes.conf**
Caso necessário, altere o arquivo para modificar a pasta raiz do sistema. Por padrão ela é nomeada **dev/instalacao/admin/public**.

O sistema pode ser acessado via html por:  **192.168.33.10**

O arquivo **config/php.ini** permite configurar outras opções do PHP caso seu sistema em Laravel
exija outras configurações.

Por padrão o sistema satisfaz:
* PHP >= 5.6.4
* OpenSSL PHP Extension
* PDO PHP Extension
* Mbstring PHP Extension
* Tokenizer PHP Extension
* XML PHP Extension

## Instanciando o Sistema

Execute o script instalacao.sh


## Criando um projeto Laravel

#### Novo Projeto
Acesse a máquina por **ssh**. Crie e acesse o diretório **/vagrant/dev** na pasta compartilhada.
Inicalmente baixe o laravel utilizando o **composer** e crie um novo projeto via composer **create-project**:

```
$ composer global require "laravel/installer"
$ composer create-project --prefer-dist laravel/laravel admin
```
Para atualizaras dependências execute na pasta do projeto Laravel, **admin** no exemplo.

```
$ composer update --no-scripts  
$ composer install
```

Caso a máquina no virtual box não reserve swap suficiente para o composer, execute:
```
$ sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
$ sudo /sbin/mkswap /var/swap.1
$ sudo /sbin/swapon /var/swap.1
```

Caso seja necessário gerar uma key, ainda na pasta **admin** raiz do seu projeto execute:

```
$ php artisan key:generate
$ php artisan config:clear
```

Após instalar o Laravel **cheque as permissões das pastas e arquivos gerados**. Eles devem ter perimssão para serem executados e escritos pelo servidor web.

#### Importar
É possível mover um projeto Laravel já criado para a pasta raiz. Note que pode ser preciso alterar 
**vagrant/config/configuracoes.conf**.
