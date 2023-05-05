const express = require("express");

const apiRouter = require("./routes/api");

const cors = require("cors");

const app = express();

app.use(cors("*"));

app.use("/books", apiRouter);

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.get("/", (req, res) => {
  res.json({
    message: "Hello there! Welcome to my bookstore api!",
  });
});

const PORT = process.env.PORT || 2002;
app.listen(PORT, () => {
  console.log(`app started on port ${PORT}`);
});
