::
:: init-install.bat
::

docker-compose up -d

md d:\docker\nginx\
md d:\docker\nginx\html\
md d:\docker\mysql\
md d:\docker\mysql\data\

::
:: cp container configs
::
::
:: nginx
docker cp nginx:/etc/nginx/nginx.conf d:\docker\nginx\nginx.conf
docker cp nginx:/etc/nginx/conf.d d:\docker\nginx

:: mysql
docker cp mysql:/etc/mysql/my.cnf d:\docker\mysql\my.cnf
docker cp mysql:/etc/mysql/conf.d d:\docker\mysql

:: drop container
docker rm -f mysql nginx redis

:: drop docker tmp network
docker network rm init_default
docker network ls
