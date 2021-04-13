HOW TO INSTALL APPLICATION:

**NOTE: awhere.sql is used to create the database and it contains sample data that is inserted in bulk -- please note this is not reflective of the business it is associated with

**NOTE: the following terminal commands are only comparable with Mac and/or Linux machines

1. Download files from www.github.com/maddy-cain/awhere
2. Unzip files and save on your machine
3. Launch Apache, php, and MySQL
	- There are many different ways to do this: I used AMPPS
	- You can download AMPPS at 'https://ampps.com/download' and follow the installation steps
	- Alternatively, you could launch a localhost server in terminal by navigating to the directory with the AWhere files and running 'php -S 0.0.0.0:8080'
4. Open a browser and navigate to 'localhost/phpmyadmin'
	- If using 'php -S 0.0.0.0:8080', navigate to 'localhost:8080/phpmyadmin
	- When using the above method, you may need to install phpMyAdmin if not already installed
6. Create database
	- On the home page, select 'Import'
	- Import the file 'awhere.sql'
	- A database called 'rankings' should now appear with four tables: question, response, response_value, and restaurant)
7. Create a user to access the database
	- On the home page, select 'User Accounts'
	- Select 'Add user account'
	- Provide username 'root' and password 'mysql'
	- Make sure to grant all permissions to this user
8. In a new tab, navigate to localhost and you should see the AWhere landing page