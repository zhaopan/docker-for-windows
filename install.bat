::
:: install.bat
::

if exist installed.lock (

    echo "installed"

) else (

    :: run init
    call ./init/init.bat

    :: docker exec -it mysql mysql -uroot -p123456
    :: alter user 'root'@'%' identified with mysql_native_password by '123456';
    :: flush privileges;
    :: exit;

    :: write inited
    echo installed > installed.lock

)

pause
