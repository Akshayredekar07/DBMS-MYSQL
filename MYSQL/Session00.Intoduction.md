## MySQL

- SQL stands for **Structured Query Language**.
- **MySQL** is an open-source relational database management system (RDBMS) that uses SQL.

### Key Concepts

- **Database**: A collection of information.
- **Data**: Raw facts or user input.
- **Information**: Processed, meaningful data stored in the form of **tables**.

### Components of a Table

- **Table**: Consists of rows and columns; also called an **entity**.
- **Row**: A single entry in the table, also known as a **record** or **tuple**.
- **Column**: Defines data types stored in each row, also called a **field** or **attribute**.

### Rules for Creating a Table

1. At least one column is required to create a table.
   - Example columns: `id`, `name`, `address`, `salary`
   - Maximum of 4096 columns per table in MySQL.
   
2. Table and column names must not start with digits.
   
3. Table and column names should not contain spaces.
   - Example: `emp deratils` (incorrect)
   - Example: `emp_details` (correct)

### Types of Databases

1. **Local Databases**: Examples include SQLite, MS-Access.
2. **Remote Databases**: Examples include MySQL, PostgreSQL.
3. **Online Databases**:
   - **OLAP** (Online Analytical Processing)
   - **OLTP** (Online Transaction Processing)

### Managing Databases

- **DBMS** (Database Management System) manages local databases.
- **RDBMS** (Relational Database Management System) manages remote databases.
- **ORDBMS** (Object-Relational Database Management System) manages online databases.


### What is MySQL?

- **MySQL** is a relational database management system used to store and retrieve data.

### Why Use MySQL?

- MySQL is used to create and manage databases.
- Tools like **MySQL Workbench** and **phpMyAdmin** are commonly used for executing SQL queries.
- **MySQL Workbench** is a client tool, not a database server.


## Types of Services in MySQL

1. **Database Engine**: Manages data storage and access.
2. **MySQL InnoDB Cluster**: Provides high availability with clustering and replication.
3. **MySQL Shell**: Interactive terminal for managing servers and clusters.
4. **MySQL Enterprise Edition**: Offers advanced security, performance monitoring, and backup solutions for enterprise needs.