
### Create Table, Commit, and Rollback Commands

1. **Create a new database**
   ```sql
   CREATE DATABASE database_name;
   ```
   **Example:**
   ```sql
   CREATE DATABASE sqldb;
   ```

2. **Creating a database with specific character set and collation**
   ```sql
   CREATE DATABASE mydatabase CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
   ```
   **Example:**
   ```sql
   CREATE DATABASE sqldb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
   ```

3. **Show all databases**
   ```sql
   SHOW DATABASES;
   ```

4. **Select a database to use**
   ```sql
   USE database_name;
   ```
   **Example:**
   ```sql
   USE sqldb;
   ```

5. **Create a table with two columns: id and name**
   ```sql
   CREATE TABLE emp (
       id INT,
       name VARCHAR(100)
   );
   ```

6. **Insert 4 rows into the emp table**
   ```sql
   INSERT INTO emp (id, name) VALUES 
   (1, 'Durga'),
   (2, 'Ram'),
   (3, 'Mohan'),
   (4, 'Sai');
   ```

7. **Select all columns and rows from the emp table**
   ```sql
   SELECT * FROM emp;
   ```

8. **Select specific columns (id and name) from the emp table**
   ```sql
   SELECT id, name FROM emp;
   ```

9. **Delete record from the table**
   ```sql
   DELETE FROM emp WHERE id=4;
   ```
   *Note: This command deletes the record permanently, and we cannot rollback it after the transaction is committed.*

10. **Disable safe update mode temporarily (if getting an error)**
    ```sql
    SET SQL_SAFE_UPDATES = 0;
    ```

11. **Enable safe update mode again (if needed)**
    ```sql
    SET SQL_SAFE_UPDATES = 1;
    ```

12. **Use transaction to manage delete operation and restore records if needed**
    ```sql
    START TRANSACTION;
    ```

13. **Delete a record within the transaction**
    ```sql
    DELETE FROM emp WHERE id=1;
    ```

14. **To undo the delete operation, use ROLLBACK**
    ```sql
    ROLLBACK;
    ```

15. **If you want to make the delete operation permanent, use COMMIT**
    ```sql
    COMMIT;
    ```

*Note: After COMMIT, ROLLBACK will no longer work.*

16. ```sql
    -- Start a transaction
    START TRANSACTION;
    -- Create a savepoint named t1
    SAVEPOINT t1;
    -- Delete a record with id=2
    DELETE FROM emp WHERE id=2;

    -- Create a savepoint named t2
    SAVEPOINT t2;
    -- Delete a record with id=3
    DELETE FROM emp WHERE id=3;
    -- Create a savepoint named 
    
    SAVEPOINT t3;
    -- Delete a record with id=4
    DELETE FROM emp WHERE id=4;

    -- (Optional) Rollback to a specific savepoint if needed
    -- ROLLBACK TO SAVEPOINT t2;  -- Uncomment to rollback to t2

    -- (Optional) Release a savepoint if no longer needed
    -- RELEASE SAVEPOINT t1;  -- Uncomment to release t1

    -- Commit the transaction to make all changes permanent
    COMMIT;
```
