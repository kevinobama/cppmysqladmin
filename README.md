Today i was struggling while connecting to MySQL in C++ in OSX and i did lot of research but there was no help available out there then i had to dug out the solution myself and decided to share the solution with everyone who is struggling with the same situation to connect the mysql in c++ in OSX.
There were some errors i was getting while connecting are:
ERROR libc++abi.dylib: terminating with uncaught exception of type sql::SQLException  Abort trap: 6
You can check the demo GitHub repo i have created there https://github.com/khanakia/mysql-connector-cpp-macos
There are two ways to connect using mysql.h file or using mysql connector. You can use any of the method mentioned below
Method 1 — Using Mysql.h
You can check the example here demo1.cpp file which is using mysql.h.
By Default g++ uses clang compiler which comes with Xcode which is not a genuine compiler so you need to reinstall to have genuine compiler for g++ You can check version with g++ — version
Here are the steps:
You will have to install the macports and mysql using below the commands
// Install macports using brew
sudo port selfupdate
sudo port install gcc46
sudo port select --set gcc mp-gcc46
gcc --version  // It should Say (gcc (MacPorts gcc46 4.6.4_11) 4.6.4) ...
// Installing and running mysql
brew install mysql
Now you create a new file demo1.cpp and paste this code or you can check the github repo link i shared
/* Standard C++ includes */
#include <stdlib.h>
#include <iostream>
#include <mysql.h>
using namespace std;
int main(void)
{
// std::vector<std::string> tables;
MYSQL_RES *result;
MYSQL_ROW row;
MYSQL *connection, mysql;

int state;

mysql_init(&mysql);

connection = mysql_real_connect(&mysql,"127.0.0.1","root","root","mysql",0,0,0);

// cout << connection;
if (connection == NULL)
{
std::cout << mysql_error(&mysql) << std::endl;
// return tables;
}
state = mysql_query(connection, "SHOW TABLES");
if (state !=0)
{
std::cout << mysql_error(connection) << std::endl;
}

result = mysql_store_result(connection);

std::cout << "tables: " << mysql_num_rows(result) << std::endl;
while ( ( row=mysql_fetch_row(result)) != NULL )
{
cout << row[0] << std::endl;
}

mysql_free_result(result);
mysql_close(connection);
}
Now Compile and run the file using the below command
g++ -o demo1 -I/usr/local/include -I/usr/local/include/mysql -W -lmysqlclient -L/usr/local/lib demo1.cpp
./demo1
Method 2 — Using Mysql Connector CPP
First you will have to download the connector for osx using these steps
Download Mysql C++ Connector for Mac OS from here https://dev.mysql.com/downloads/connector/cpp/
Extract cppconn direcotry and mysql_connection.h, mysql_driver.h, mysql_error.h file to the root direcotry of your application
Now create DYLIB file from cpp connector using the same compiler we are using to compile our code
git clone https://github.com/mysql/mysql-connector-cpp .
git checkout 1.1
git tag
git checkout tags/1.1.9
which g++
which gcc
cmake -DCMAKE_C_COMPILER=/opt/local/bin/gcc -DCMAKE_CXX_COMPILER=/opt/local/bin/g++ .
make
make install
NOTE: You should find dylib files in driver director and copy those files to the same directory where your code exists
Now you create a new file demo.cpp and paste this code or you can check the github repo link i shared
/* Standard C++ includes */
#include <stdlib.h>
#include <iostream>
/*
Include directly the different
headers from cppconn/ and mysql_driver.h + mysql_util.h
(and mysql_connection.h). This will reduce your build time!
*/
#include "mysql_connection.h"
#include <cppconn/driver.h>
#include <cppconn/exception.h>
#include <cppconn/resultset.h>
#include <cppconn/statement.h>
using namespace std;
int main(void)
{
cout << endl;
sql::Driver *driver;
sql::Connection *con;
sql::Statement *stmt;
sql::ResultSet *res;
/* Create a connection */
driver = get_driver_instance();
con = driver->connect("tcp://127.0.0.1:3306", "root", "root");
/* Connect to the MySQL test database */
con->setSchema("mysql");
stmt = con->createStatement();
res = stmt->executeQuery("SELECT 'Hello World!' AS _message");
while (res->next()) {
cout << "\t... MySQL replies: ";
/* Access column data by alias or column name */
cout << res->getString("_message") << endl;
cout << "\t... MySQL says it again: ";
/* Access column data by numeric offset, 1 is the first column */
cout << res->getString(1) << endl;
}
delete res;
delete stmt;
delete con;
cout << endl;
return EXIT_SUCCESS;
}
Now Compile and run the file using the below command
g++ -o demo -I/usr/local/include -I/Volumes/D/www/c++ -L. -lmysqlcppconn demo.cpp
./demo