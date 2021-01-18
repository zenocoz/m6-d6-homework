require("dotenv").config();
const fs = require("fs");
const path = require("path");
const db = require("../db")
const {promisify} = require("util")
const read = promisify(fs.readFile);
const dataPath = path.join(__dirname, "../data/northwind.sql");
const insertData = async () => {
  try {
    const data = await read(dataPath);
    const sqlQueryString = data.toString();
    await db.query(sqlQueryString)
    console.info(`All data set! you are ready to go 🔥🔥🔥`);
  } catch (e) {
    console.error("Data insertion is failed 😓");
    console.log(e);
  }
  db.pool.end()
};


insertData()