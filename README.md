# SplitWise

A Spring Boot expense management application for tracking and splitting shared expenses.

## Overview

SplitWise is a web application designed to help users manage shared expenses. Whether you're splitting bills with roommates, tracking expenses for a trip, or managing costs for an event, SplitWise makes it easy to keep track of who paid what and who owes whom.

![Screenshot 2025-03-23 080745](https://github.com/user-attachments/assets/d9350722-b488-4ac6-a0d1-4879d8c52106)

![Screenshot 2025-03-23 081022](https://github.com/user-attachments/assets/25f9f460-2d10-45ed-b41d-770af3a3c06d)

![Screenshot 2025-03-23 081118](https://github.com/user-attachments/assets/7c3a6a58-25bd-4bf6-8100-840c41b77594)



## Features

- **User Authentication**: Secure signup and login functionality
- **Expense Tracking**: Add and categorize expenses
- **Expense Splitting**: Split expenses equally or with custom amounts
- **Balance Calculation**: Automatically calculate balances between users
- **Simplified Debts**: Algorithm to minimize the number of transactions needed to settle up
- **Transaction History**: Keep a record of all shared expenses
- **Settlement Tracking**: Record when debts are paid back

## Tech Stack

- **Java**: Core programming language
- **Spring Boot**: Backend framework
- **JSP**: View templating
- **HTML/CSS**: Frontend structure and styling
- **Bootstrap**: Responsive design framework
- **SQL**: Database for storing application data
- **Maven/Gradle**: Dependency management

## Installation

### Prerequisites

- JDK 11 or higher
- Maven/Gradle
- MySQL/PostgreSQL

### Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/sumitmahankale/SplitWise.git
   cd SplitWise
   ```

2. Configure database:
   - Create a database in your SQL server
   - Update `application.properties` with your database credentials

3. Build the project:
   ```bash
   mvn clean install
   # or if using Gradle
   # gradle build
   ```

4. Run the application:
   ```bash
   mvn spring-boot:run
   # or if using Gradle
   # gradle bootRun
   ```

5. Visit `http://localhost:8080` in your browser

## Usage

1. **Sign Up/Login**: Create an account or log in to your existing account
2. **Add Expenses**: Record new expenses with details like amount, date, and category
3. **Split Expenses**: Choose how to split each expense among participants
4. **View Balances**: See at a glance who owes money and who is owed money

## Database Schema

The application uses the following key tables:
- `users`: Stores user information and authentication data
- `expenses`: Tracks individual expenses
- `splits`: Manages how expenses are divided among users

## Project Structure

```
src/
├── main/
│   ├── java/
│   │   └── com/
│   │       └── splitwise/
│   │           ├── controller/
│   │           ├── model/
│   │           ├── repository/
│   │           ├── service/
│   │           └── SplitWiseApplication.java
│   ├── resources/
│   │   ├── static/
│   │   │   ├── css/
│   │   │   ├── js/
│   │   │   └── images/
│   │   ├── application.properties
│   │   └── data.sql
│   └── webapp/
│       └── WEB-INF/
│           └── views/
│               ├── login.jsp
│               ├── dashboard.jsp
│               └── ...
└── test/
    └── java/
        └── com/
            └── splitwise/
                └── ...
```

## Testing

Run the test suite with:
```bash
mvn test
# or if using Gradle
# gradle test
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- This project is inspired by the original [Splitwise](https://www.splitwise.com/) application
- Special thanks to all contributors
