HOW TO INSTALL APPLICATION:

** NOTE: the terminal commands below are compatible with Mac and Linux machines only
** NOTE: the awhere.sql document has some bulk insert data but this is simply random data and is not reflective of the business associated with it

1. Download files from www.github.com/maddy-cain/awhere
2. Unzip folder and save on your machine
3. Open terminal and navigate to the directory where the AWhere files are saved
4. Run 'php -S 0.0.0.0:8080'
5. Open a browser and navigate to 'localhost/phpmyadmin'
6. Create database
	- On left hand side, select 'New'
	- In the database name field, type 'rankings'
	- Enter database and select 'Import'
	- Browse to AWhere files and import 'awhere.sql'
7. You may need to create a user called 'root' with password 'mysql'
	- Make sure to grant all permissions to this user
8. Now, navigate in browser to localhost:8080 and you should see the AWhere landing page