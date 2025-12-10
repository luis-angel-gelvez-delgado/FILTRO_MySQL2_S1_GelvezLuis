# Pizzería Don Piccolo — Filtro Base de Datos II

Una colección de scripts SQL para modelar y gestionar las operaciones de la Pizzería Don Piccolo:
- creación de tablas y relaciones
- datos de ejemplo
- consultas y vistas
---

## Índice

- Descripción
- Estructura del proyecto
- Cómo ejecutar los scripts
- Descripción rápida de tablas

---

## Descripción

Este repositorio contiene los scripts para crear una base de datos MySQL que gestiona pedidos, repartidores y domicilios. Está pensado como proyecto académico para la asignatura de Base de Datos II.

El objetivo es practicar diseño relacional, vistas y consultas avanzadas aplicadas a un caso real.

## Estructura del proyecto

Raiz del proyecto:

```
Proyecto_MySQL2_GelvezLuis/
 ├── database.sql        # Creación de tablas e inserciones de ejemplo
 ├── script.sql          # Script donde estan las consultas y las vistas solicitadas
 └── README.md           # Documentación (este archivo)
```

## Cómo ejecutar los scripts (copia y pega los contenidos)

Si prefieres practicar copiando y pegando los contenidos de los archivos en vez de ejecutar los ficheros directamente, sigue este orden y estos pasos:

Orden recomendado (copiar y pegar en este orden):

1. `database.sql`  — crea la base de datos, tablas y añade datos de ejemplo.
2. `script.sql`  — Script donde estan las consultas y las vistas solicitadas.

Pasos prácticos:

- Abre la consola `mysql` y conéctate a tu servidor.
- Abre el archivo `database.sql`, selecciona todo su contenido y pégalo en la ventana de consultas. Ejecuta ese bloque (esto crea la base y las tablas).
- Abre `script.sql`, copia su contenido y pégalo en la ventana.

## Descripción rápida de tablas

- `persona`: datos personales básicos (documento, nombre, teléfono, dirección, email).
- `cliente`: referencia a `persona` para clientes registrados.
- `empleado`: referencia a `persona` y campo `cargo` (pizzero, mesero, vendedor).
- `zona`: zonas de reparto y precio base de domicilio.
- `repartidor`: referencia a `persona` y a `zona`, con estado (disponible/no disponible).
- `pedido`: referencia a cliente, empleado, tipo de pago, fecha/hora, estado y `precio_total`.
- `detalle_pedido`: pizzas dentro de un pedido (cantidad y subtotal).
- `domicilio`: información específica de envíos (repartidor, distancia, horas y precio de envío).
- `pizza`, `ingrediente`, `ingrediente_pizza`: catálogo y relación de ingredientes por pizza.

## Consultas destacadas (en `script.sql`)

- Pedidos por repartidor (JOIN).


## Vistas destacadas (en `script.sql`)

- desempeño de los repartidores

## Autor

Luis Ángel Gelvez Delgado — Proyecto CampusLands (MySQL II)

Pizzería Don Piccolo 

---