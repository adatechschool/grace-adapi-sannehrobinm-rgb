import express from "express";
const app = express();

//Création de la route
app.get("/", (req, res) => {
  res.send("Hello, Grace Hopper team !");
});

//lance le serveur
app.listen(3000, () => console.log("Serveur sur http://localhost:3000"));

//PS:convention 3000, tu peux metttre plus mais il faut mettre la meme chose partout.