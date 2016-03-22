sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default1
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo ln -s /home/box/web/hello.py   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
cd /home/box/web/
sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:app