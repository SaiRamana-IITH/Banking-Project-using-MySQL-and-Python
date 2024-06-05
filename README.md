# Banking-Project-using-MySQL-and-Python
Here's an overview of the main features:

Database Structure:

The project defines two tables in the MySQL database - customer and transaction.
The customer table stores information about customers, including account number, name, address, phone, email, Aadhar number, account type, status, and balance.
The transaction table stores transaction details such as transaction ID, date of transaction, amount, transaction type (deposit/withdraw), and the associated account number.

Operations:

Add Account: Allows the addition of a new customer to the system with basic information and an opening balance.
Modify Account: Enables the modification of customer information such as name, address, phone, or email.
Close Account: Marks a customer's account as closed in the system.
Activate Account: Activates a previously closed account.
Transaction Menu: Provides options for depositing and withdrawing money from customer accounts.
Search Menu: Allows searching for customer information based on account number, Aadhar card, phone number, email, or name.
Main Menu: The main menu serves as the entry point, offering options to perform various operations on customer accounts.

Database Connectivity:

The project uses the mysql.connector library to connect to the MySQL database.
Database connection parameters such as host, database name, user, and password are specified in the code.

Security Note:

The project currently uses plain SQL queries and string concatenation, which may expose it to SQL injection attacks. Consider using parameterized queries to enhance security.

Usage:

Users can interact with the banking system through the command-line interface, making choices from the main menu and sub-menus.
