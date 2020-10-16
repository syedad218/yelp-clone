require("dotenv").config();
const express = require("express");
const morgan = require("morgan");

const app = express();

// order is important for middlewares
app.use(morgan("dev"));

const port = process.env.PORT || 8080;

// GET all restaurants
app.get("/api/v1/restaurants", (req, res) => {
  res.status(200).json({
    status: "success",
    data: { restaurants: ["mcdonalds", "wendys"] },
  });
});

// GET individual restaurant
app.get("api/v1/restaurants/:restaurantid", (req, res) => {
  console.log(req.params);
});

// CREATE a new restaurant
app.post("api/v1/restaurants", (req, res) => {
  console.log(req.body);
});

app.listen(port, () => {
  console.log(`server is listening on port ${port}`);
});
