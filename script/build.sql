CREATE DATABASE IF NOT EXISTS " personal_blog ";
USE "personal_blog";

-- Datos sacados de la carpeta de 'diagram' del proyecto

CREATE TABLE "bg01_blog" (
    "id_blog" INT NOT NULL AUTO_INCREMENT,
    "title" VARCHAR(255) NOT NULL,
    "tx_title" VARCHAR(225) NOT NULL,
    "md_content" TEXT NOT NULL,
    "tm_createdAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "tm_updatedAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    "fk_id_category" INT NOT NULL
);