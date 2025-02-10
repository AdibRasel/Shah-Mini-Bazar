# Shah Mini Bazar

Shah Mini Bazar is a complete e-commerce platform with a customer-facing Android application, an admin dashboard, and a backend system. The platform enables seamless shopping experiences for customers while providing admin functionalities for managing products, orders, and users.

## Technologies Used

### Frontend
- **Android Application**: Developed using **Dart & Flutter**.
- **Admin Dashboard**: Built with **React.js** for an interactive and responsive interface.

### Backend
- **Node.js & Express.js**: Used for the server-side API and business logic.
- **MongoDB**: Used as the database to store product, user, and order information.

## Features

### Customer Android App (Flutter)
- User authentication and registration
- Product browsing and searching
- Add to cart and checkout functionality
- Order tracking and history
- Push notifications for order updates

### Admin Dashboard (React.js)
- Secure login for administrators
- Product management (add, edit, delete products)
- Order management (view, update order status)
- User management
- Sales and revenue reports

### Backend (Node.js, Express.js, MongoDB)
- RESTful API for communication between frontend and backend
- Secure authentication using JWT
- Database management with MongoDB
- API endpoints for products, orders, and users

## Installation & Setup

### Backend Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/shah-mini-bazar.git
   cd backend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Create a `.env` file and configure necessary environment variables (e.g., database URL, JWT secret, etc.).
4. Start the server:
   ```bash
   npm start
   ```

### Admin Dashboard Setup
1. Navigate to the dashboard directory:
   ```bash
   cd admin-dashboard
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the development server:
   ```bash
   npm start
   ```

### Android App Setup
1. Open the `android-app` folder in **Android Studio**.
2. Run the following command to get dependencies:
   ```bash
   flutter pub get
   ```
3. Connect a device or start an emulator.
4. Run the app:
   ```bash
   flutter run
   ```

## API Endpoints (Backend)

| Method | Endpoint          | Description              |
|--------|------------------|--------------------------|
| GET    | /products        | Fetch all products      |
| POST   | /products        | Add a new product       |
| PUT    | /products/:id    | Update product details  |
| DELETE | /products/:id    | Remove a product        |
| GET    | /orders          | Fetch all orders       |
| POST   | /orders          | Create a new order      |
| PUT    | /orders/:id      | Update order status     |
| DELETE | /orders/:id      | Cancel an order         |
| POST   | /auth/register   | User registration       |
| POST   | /auth/login      | User login              |

## Contribution Guidelines
1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m "Added new feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a pull request.

## License
This project is licensed under the MIT License.

---

For any issues or queries, contact **Shah Mini Bazar** support team.

