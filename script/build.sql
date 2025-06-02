CREATE DATABASE IF NOT EXISTS  personal_blog ;
USE personal_blog;

-- Datos sacados de la carpeta de 'diagram' del proyecto

CREATE TABLE "bg01_blog" (
    "id_blog" INT NOT NULL AUTO_INCREMENT,
    "title" VARCHAR(255) NOT NULL,
    "tx_title" VARCHAR(225) NOT NULL,
    "md_content" TEXT NOT NULL,
    "tm_createdAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "tm_updatedAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    "fk_id_category" INT NOT NULL,
    FOREIGN KEY ("fk_id_category") REFERENCES "bg04_category" ("id_category") ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE "bg03_blog_tag" (
    "id_blog_tag" INT NOT NULL AUTO_INCREMENT,
    "fk_id_blog" INT NOT NULL,
    "fk_id_tag" INT NOT NULL,
    FOREIGN KEY ("fk_id_blog") REFERENCES "bg01_blog" ("id_blog") ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY ("fk_id_tag") REFERENCES "bg02_tag" ("id_tag") ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE "bg02_tag" (
    "id_tag" INT NOT NULL AUTO_INCRIMENT,
    "tx_nombre" VARCHAR(225) NOT NULL
);

CREATE TABLE "bg04_category" (
    "id_category" INT NOT NULL AUTO_INCREMENT,
    "tx_name" VARCHAR (225) NOT NULL
);