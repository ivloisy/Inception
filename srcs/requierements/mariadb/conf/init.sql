CREATE DATABASE wordpress;

CREATE USER 'wordpress_user'@'localhost' IDENTIFIED BY 'hackme';
GRANT ALL PRIVILEGES ON *.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'hackme';
FLUSH PRIVILEGES;

CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'hackme';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress_user'@'%' IDENTIFIED BY 'hackme';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'hackme';
