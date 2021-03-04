::
:: init.bat
::

if exist inited.lock (

    echo "inited"

) else (

    :: run install init
    call ./init-install.bat

    :: write inited
    echo inited > inited.lock

    pause
)
