require('dotenv').config()
module.exports = {
    default: `--parallel ${process.env.parallel} --format-options '{"snippetInterface": "synchronous"}'`
  }

