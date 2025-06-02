# PB_team-1
# 📘 Blog Personal – Base de Datos

Este proyecto contiene la base de datos para una app de blog personal. Usamos **PostgreSQL** para crear las tablas y **DrawDB** para el diagrama.

## 🔧 ¿Qué hicimos?

- Creamos la base de datos `personal_blog`
- Tablas: blogs, categorías, etiquetas y relación blog-etiqueta
- Armamos el archivo `build.sql` para ejecutar todo de una

## 📁 Archivos

- `create.sql`: contiene la estructura de las tablas
- `build.sql`: corre todo para crear la base de datos
- `diagram/`: incluye el diagrama hecho en DrawDB

## ▶️ Cómo usar

1. Crear la base de datos en PostgreSQL:
   ```bash
   psql -U postgres -f build.sql   

