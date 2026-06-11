import express from "express";
import type { Request, Response } from "express";

const app = express();

app.get("/", (req: Request, res: Response) => {
  res.send("Working now!");
});

app.listen(3000, () => {
  console.log("Server working!");
});
