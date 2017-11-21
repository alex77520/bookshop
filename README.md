# laravel5
把项目下载到本地；
在项目跟目录执行安装命令；

composer install -vvv
然后把 .env.example改名为.env;
生成APP_KEY；

php artisan key:generate
把 .env 文件中的 APP_URL 改为自己的域名；
把 .env 文件中的 DB_HOST、DB_PORT、DB_DATABASE、DB_USERNAME、DB_PASSWORD；
改为自己的数据库链接； 运行迁移命令；

php artisan migrate
运行数据填充命令;

php artisan db:seed
ok；人品好的话；
一个跟我博客一样的项目就完成了；

后台

http://127.0.0.1/admin
账号:test@test.com
密码：123456

前台

http://127.0.0.1/