import { Router } from "express";
import { prisma } from "../config/prisma.js";
export const obtenerAlumnos = async (_req, res) => {
  try {
    const alumnos = await prisma.alumno.findMany();
    res.json(alumnos);
  } catch (error) {
    console.error(error);
    res.status(500).send({ message: "Internal server error" });
  }
};
