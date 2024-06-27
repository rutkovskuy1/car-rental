// server.js
const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const app = express();
const port = 3000;

// Дозволяємо CORS для всіх запитів (для розробки)
app.use(cors({
  origin: 'http://localhost:8081', // Дозволяємо запити з цієї адреси
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Content-Type'],
}));

// Налаштування підключення до бази даних
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  port: '3307',
  password: 'root123', // заміни на твій пароль
  database: 'car_dealership'
});

db.connect(err => {
  if (err) {
    console.error('Error connecting to the database:', err);
    return;
  }
  console.log('Connected to the database.');
});

// Маршрут для отримання автомобілів за маркою та ціною
app.get('/cars', (req, res) => {
  const { brand, minPrice, maxPrice } = req.query;
  let query = 'SELECT * FROM cars WHERE 1=1';

  const values = [];
  if (brand) {
    query += ' AND brand = ?';
    values.push(brand);
  }
  if (minPrice) {
    query += ' AND price >= ?';
    values.push(minPrice);
  }
  if (maxPrice) {
    query += ' AND price <= ?';
    values.push(maxPrice);
  }

  db.query(query, values, (err, results) => {
    if (err) {
      console.error('Error executing query:', err);
      res.status(500).send('Server error');
      return;
    }
    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
