# Library Management System

![library_Github](https://github.com/ravindub/Library-System-Oracle/assets/47911656/d7b20e2a-e1df-42c3-ad87-3365b63c91d6)

A comprehensive Library Management System built using JSP, Servlet, and backed by an Oracle database. This system is designed to streamline the process of book lending, tracking, and management for libraries, ensuring an organized and efficient approach to handling library resources.

## Features:

- **User Registration & Authentication**: Secure user registration and login system for staff and members.
- **Book Inventory Management**: Add, update, or delete book records, keeping the inventory up-to-date.
- **Lending & Returns**: Track book lending and returns with due dates and fines.
- **Search & Filtering**: Efficiently search for books based on various parameters such as title, author, genre, etc.
- **Reports**: Generate reports on book loan history and fines.

## Tech Stack:

- **Frontend**: JSP for dynamic web pages.
- **Backend**: Java Servlets.
- **Database**: Oracle for data persistence and querying.

## Setup & Installation:

1. Download and install Eclipse IDE for Enterprise Java and Web Developers.
2. JDK 8 or above required.
3. Install Apache Tomcat Server.(when installing apache change HTTP port to 9090 since oracle is using 8080 port by default)
4. Install oracle 10g database.
5. Import database to oracle
    - login to oracle by this link (http://localhost:8080/apex)
    - username : system.
    - password : created while installing oracle database.
    - Go to Administration > manage database
    - create new user with username: library  and password: library (check all check boxes)
    - logout from default account and login with newly created account
    - open the 'LibraryOracle > databse' folder 
    - right click and select open in terminal
    - type this command and enter - "imp library/library  touser=library  fromuser=library  file=library.dmp"
6.   open eclipse EE and Clone this repository.
7.   Go to File > properties > server to create new apache tomcat 9.0 server
8.   right click on the project folder & go to properties > project facets > runtime and add apache tomcat 9.0 server to the project
9.   right click on the project folder & go to run As > run on server
      
          

Teacher Login


username:depHead  
password: depHead123

## MongoDB Version:

- Here's the link to the mongoDB version fo the same project. https://github.com/ravindub/Library-System-MongoDB




