const express = require("express");

const router = express.Router();

const jsonParser = express.json();

const client = require("../db");

//get all books from the API
router.get("/", async (req, res) => {
  try {
    await client.query("SELECT * FROM books", (err, result) => {
      if (result) {
        res.json({
          status: 200,
          message: "Request successful... Books found!",
          data: result.rows,
        });
      } else {
        console.log(err.message);
      }
    });
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
  client.end;
});

//get a book by it's id
router.get("/:book_id", async (req, res) => {
  try {
    const { book_id } = req.params;
    await client.query(
      "SELECT * from books where book_id=$1",
      [book_id],
      (err, result) => {
        if (!err) {
          // res.send(result.rows);
          res.json({
            status: 200,
            message: "Request successful... Book Retrieved!",
            data: result.rows,
          });
        } else {
          console.log(err.message);
        }
      }
    );
  } catch {
    res.status(404).json({ error: "Request failed... Book not found!" });
  }
  client.end;
});

//create a new book
router.post("/", jsonParser, async (req, res) => {
  try {
    const {
      book_title,
      book_author,
      book_rating,
      book_genre,
      book_publication_date,
    } = req.body;

    await client.query(
      "INSERT INTO books (book_title, book_author, book_rating, book_genre, book_publication_date ) VALUES ($1, $2, $3, $4, $5) RETURNING *",
      [book_title, book_author, book_rating, book_genre, book_publication_date],
      (err, result) => {
        if (result) {
          res.json({
            status: 201,
            message: "Request successful... Book Created!",
            data: result.rows,
          });
        } else {
          console.log(err.message);
        }
      }
    );
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
  client.end;
});

//update a book
router.patch("/:book_id", jsonParser, async (req, res) => {
  const { book_id } = req.params;
  try {
    const {
      book_title,
      book_author,
      book_rating,
      book_genre,
      book_publication_date,
    } = req.body;

    await client.query(
      "UPDATE books set book_title = $1, book_author = $2, book_rating = $3, book_genre = $4, book_publication_date = $5 WHERE book_id = $6",
      [
        book_title,
        book_author,
        book_rating,
        book_genre,
        book_publication_date,
        book_id,
      ],
      (err, result) => {
        if (result) {
          res.json({
            status: 200,
            message: "Request successful... Book Updated!",
            data: result.rows,
          });
        } else {
          console.log(err.message);
        }
      }
    );
  } catch {
    res.status(404).json({ error: "Request failed... Book not found!" });
  }
  client.end;
});

//delete a book
router.delete("/:book_id", async (req, res) => {
  try {
    const { book_id } = req.params;

    await client.query(
      `DELETE from books where book_id = $1`,
      [book_id],
      (err, result) => {
        if (result) {
          res.json({
            status: 204,
            message: "Request succesful... Book Deleted!'",
          });
        } else {
          console.log(err.message);
        }
      }
    );
  } catch {
    res.status(404).json({ error: "Request failed... Book not found!" });
  }
  client.end;
});

module.exports = router;
