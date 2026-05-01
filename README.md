# Simple Book Store (Spring Boot + MySQL)

This is a minimal responsive online book store example using Spring Boot, Thymeleaf and MySQL.

Prerequisites
- Java 17 (or 11+)
- Maven
- MySQL server (or MariaDB)

Database access
- Default database: H2 in-memory database
- H2 console URL: http://localhost:8080/h2-console
- JDBC URL: jdbc:h2:mem:bookstore
- User Name: sa
- Password: leave blank
- Use this when the app is running with the default configuration

If you want MySQL instead of H2, update `src/main/resources/application-mysql.properties` and run the app with the `mysql` profile.

Quick setup

1. Clone or copy this project to your machine.
2. Create the database and sample data (either let JPA create tables, or run the SQL):

   - To run SQL manually (recommended once):

   ```sql
   -- run the file db/init.sql in your MySQL client
   ```

   - Or let Spring create tables automatically using `spring.jpa.hibernate.ddl-auto=update`.

3. By default the app now uses an in-memory H2 database so you can run without MySQL.

   To open it in the browser, start the app and go to:

   - Home page: http://localhost:8080
   - H2 console: http://localhost:8080/h2-console

   H2 login details:

   - JDBC URL: jdbc:h2:mem:bookstore
   - User Name: sa
   - Password: leave blank

4. To run quickly with H2 (recommended for testing):

```bash
mvn spring-boot:run
```

5. To run using MySQL (requires MySQL server):

 - Update credentials in `src/main/resources/application-mysql.properties`.
 - Create the database and sample data by running `db/init.sql` in your MySQL client.
 - Start with the `mysql` profile:

```bash
mvn spring-boot:run -Dspring-boot.run.profiles=mysql
```

6. Or build and run the jar (H2 default):

```bash
mvn spring-boot:run
# or build jar and run
mvn clean package
java -jar target/bookstore-0.0.1-SNAPSHOT.jar
```

7. Open http://localhost:8080 in your browser.

Pages
- Home: `/` (link to catalog and login)
- Login: `/login`
- Register: `/register`
- Catalog: `/catalog`

Notes
- This example uses very simple, insecure auth (plain-text password) for demonstration only. Do not use in production.
- To reset sample data, run `db/init.sql` against your MySQL instance.
- If you use MySQL, create the database first with:

```sql
CREATE DATABASE bookstore;
```

- Then run `db/init.sql` in your MySQL client to create tables and insert sample books.
