import { Router } from "express";
import { prisma } from "../config/prisma.js";
import { obtenerAlumnos } from "../controllers/alumno.controller.js";

const router = Router();

router.get("/", obtenerAlumnos);

export default router;
