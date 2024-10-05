
## MySQL Command Set

1. **DDL (Data Definition Language)**
Used for defining database structures such as tables, databases, and constraints.

   - **Create**: Used to create tables, databases, functions, procedures, constraints, etc.
   - **Alter**: Used to modify table structures like adding columns, dropping columns, or changing column data types and sizes.
   - **Drop**: Used to permanently delete databases, tables, or other database objects.

1. **DML (Data Manipulation Language)**
Used for manipulating the data inside tables.

   - **Insert**: Used to insert records into a table.
   - **Update**: Used to modify existing data or records in a table.
   - **Delete**: Used to remove data from a table.

1. **DCL (Data Control Language)**
Used for managing access to the database.

   - **Grant**: Used to give user privileges or permissions.
   - **Revoke**: Used to take back user privileges or permissions.

1. **TCL (Transaction Control Language)**
Used to manage transactions in the database.

   - **Commit**: Saves all changes made in the transaction.
   - **Rollback**: Undoes changes in a transaction.
   - **Savepoint**: Creates points within a transaction to which you can roll back.

1. **DQL (Data Query Language)**
Used for querying and retrieving data from a table.

   - **Select**: Used to retrieve data from a table.


### Common SQL Commands in MySQL

1. **Create**
Used to create tables, databases, functions, procedures, and constraints.

```sql
CREATE DATABASE database_name;
CREATE TABLE emp (id INT, name VARCHAR(20));
```

2. **Alter**
Used to modify the table structure, such as adding columns or changing column data types.

```sql
ALTER TABLE emp ADD COLUMN age INT;
ALTER TABLE emp MODIFY COLUMN name VARCHAR(50);
```

3. **Update**
Used to modify the content of a table.

```sql
UPDATE emp SET name = 'John' WHERE id = 1;
```

4. **Drop**
Used to delete tables or databases permanently.

```sql
DROP DATABASE database_name;
DROP TABLE emp;
```

5. **Delete**
Used to delete data from a table.

```sql
DELETE FROM emp WHERE id = 1;
```

6. **Insert**
Used to insert records into a table.

```sql
INSERT INTO emp (id, name) VALUES (1, 'sai'), (2, 'ram');
```

7. **Select**
Used to read data from a table.

```sql
SELECT * FROM emp;  -- Selects all columns
SELECT id FROM emp; -- Selects only the 'id' column
```

---

### System Databases in MySQL

By default, MySQL comes with several system databases:

1. **mysql**: Manages user permissions and privileges.
2. **information_schema**: Stores information about all other databases on the server.
3. **performance_schema**: Used for monitoring server performance.
4. **sys**: Provides a set of views and procedures for better performance and usability insights.

---

### MySQL Database Creation Example

To create a new database and use it:

```sql
CREATE DATABASE my_database;
USE my_database;
```

---

### File Management in MySQL

In MySQL, databases are stored as files on the server.

- **Primary file**: `.ibd` or `.frm` files store the table data and definitions.
- **Log file**: Log files (`ib_logfile`) manage transactions and ensure data integrity.

---

### Additional Table Operations

**Creating a Table**

```sql
CREATE TABLE emp (id INT, name VARCHAR(20));
```

**Retrieving Data**

```sql
SELECT * FROM emp;  -- Retrieves all records and columns
SELECT id FROM emp; -- Retrieves only the 'id' column
```

**Inserting Data**

```sql
INSERT INTO emp (id, name) VALUES (1, 'sai'), (2, 'ram');
```

**Updating Data**

```sql
UPDATE emp SET name = 'manoj' WHERE id = 1;
```

**Deleting Records**

```sql
DELETE FROM emp WHERE id = 1;  -- Deletes one record
DELETE FROM emp;               -- Deletes all records
```