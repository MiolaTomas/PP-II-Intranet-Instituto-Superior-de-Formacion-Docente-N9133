-- CreateTable
CREATE TABLE `Alumno` (
    `idAlumno` INTEGER NOT NULL AUTO_INCREMENT,
    `idCuenta` INTEGER NOT NULL,
    `legajo` VARCHAR(255) NOT NULL,
    `fechaInscripcion` DATETIME(3) NOT NULL,
    `estadoAcademico` VARCHAR(255) NOT NULL,
    `promedio` DECIMAL(2, 2) NULL,
    `apellidoNombre` VARCHAR(255) NOT NULL,
    `dni` INTEGER NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `localidad` VARCHAR(255) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `domicilio` VARCHAR(255) NOT NULL,
    `telefono` VARCHAR(191) NOT NULL,
    `tituloSecundario` VARCHAR(191) NOT NULL,
    `institucionProcedencia` VARCHAR(255) NULL,
    `adeudaMateria` INTEGER NOT NULL,
    `carreraElegida` ENUM('PROFESORADO_MATEMATICA', 'PROFESORADO_LENGUA', 'PROFESORADO_HISTORIA', 'TECNICATURA_SOFTWARE') NOT NULL,
    `passwordHash` VARCHAR(255) NOT NULL,

    UNIQUE INDEX `Alumno_idCuenta_key`(`idCuenta`),
    UNIQUE INDEX `Alumno_dni_key`(`dni`),
    UNIQUE INDEX `Alumno_email_key`(`email`),
    PRIMARY KEY (`idAlumno`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
