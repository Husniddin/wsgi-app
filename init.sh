
sudo ﻿ln -s /home/box/web/etc/gnginx.conf /etc/nginx/sites-enabled/

sudo /etc/init.d/nginx restart

sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/

sudo service gunicorn restart

# sudo gunicorn -c /etc/gunicorn.d/hello.py hello:hello
sudo gunicorn -c /home/box/etc/hello.py hello:hello