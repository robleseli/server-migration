cd C:\xampp\mysql
bin\mysqld --initialize-insecure
start /b bin\mysqld
bin\mysql -u root
    CREATE USER pma@localhost;
    SOURCE C:/xampp/phpMyAdmin/sql/create_tables.sql;
    GRANT SELECT, INSERT, DELETE, UPDATE, ALTER ON phpmyadmin.* TO pma@localhost;
    ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY '';
    ALTER USER pma@localhost IDENTIFIED WITH mysql_native_password BY '';
    \q
bin\mysqladmin -u root shutdown
