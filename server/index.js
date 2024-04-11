// const express = require("express");
// const mongoose = require("mongoose");
// const authRouter = require("./routes/auth");

// //const PORT = process.env.PORT || 58058;
// const PORT = process.env.PORT || 3000;

// const app = express();

// app.use(express.json());
// app.use(authRouter);

// const DB ="mongodb+srv://abhiramivs25549:yNofhhL4maF67SMc@clear-care-db.niypdbr.mongodb.net/";
// //  const DB="mongodb+srv://abhiramivs25549:yNofhhL4maF67SMc@clear-care-db.niypdbr.mongodb.net/?retryWrites=true&w=majority&appName=Clear-care-db"
// mongoose
//   .connect(DB)
//   .then(() => {
//     console.log("Connection Successful");
//   })
//   .catch((e) => {
//     console.log(e);
//   });

// app.listen(PORT,"0.0.0.0", () => {
//   console.log(`connected at port ${PORT}`);
// });

// import cors from 'cors';
//import express from 'express';

// const express = require("express");
// const mongoose = require("mongoose");
// const authRouter = require("./routes/auth");




// //const cors= require("cors");
// //const cors=require("./routes/cors");


// //const PORT = process.env.PORT || 5500;
// const PORT = process.env.PORT || 3000;
// //const PORT = process.env.PORT || 59999;
// const app = express();


// // const allowedOrigins = ['http://localhost:3000', 'http://192.168.1.2:3000'];
// // const options = {
// //   origin: allowedOrigins,
// // };
// // app.use(cors(options));


// app.use(express.json());
// app.use(authRouter);

// //app.use(cors());

// const DB = "mongodb+srv://abhiramivs25549:yNofhhL4maF67SMc@clear-care-db.niypdbr.mongodb.net/";

// mongoose
//   .connect(DB)
//   .then(() => {
//     console.log("Connection Successful");
//   })
//   .catch((e) => {
//     console.log(e);
//   });

// app.listen(PORT, "0.0.0.0", () => {
//   console.log(`connected at port ${PORT}`);
// });





const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");


//const cors= require("cors");
//const cors=require("./routes/cors");


//const PORT = process.env.PORT || 5500;
const PORT = process.env.PORT || 3000;
//const PORT = process.env.PORT || 59999;
const app = express();

app.use(express.json());
app.use(authRouter);

//app.use(cors());

const DB = "mongodb+srv://abhiramivs25549:yNofhhL4maF67SMc@clear-care-db.niypdbr.mongodb.net/";

mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});




// const express = require('express');
// const cors = require('cors');

// const app = express();

// // Allow cross-origin requests from the following domains
// const allowedOrigins = ['http://localhost:3000', 'http://192.168.1.2:3000'];

// // Use the cors middleware with the allowed origins
// app.use(cors({
//   origin: function (origin, callback) {
//     if (allowedOrigins.indexOf(origin) !== -1 || !origin) {
//       callback(null, true);
//     } else {
//       callback(new Error('Not allowed by CORS'));
//     }
//   },
// }));

// // Your routes and other middleware setup here

// const PORT = process.env.PORT || 3000;

// app.listen(PORT, "0.0.0.0", () => {
//   console.log(`Server is running on port ${PORT}`);
// });
