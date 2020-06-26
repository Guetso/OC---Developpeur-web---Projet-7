/* const fs = require('fs') */
const conn = require('../mysqlConfig')

exports.createMessage = (req, res, next) => {
  const message = req.body.message
  conn.query('INSERT INTO messages SET ?', message, function (
    error,
    results,
    fields
  ) {
    if (error) {
      console.log(error)
      return res.status(400).json(error.sqlMessage)
    }
    return res.status(201).json({ message: 'Votre message a bien été posté !' })
  })
}