-- creacion de tablas en el data mart

CREATE TABLE "DIM_Tiempo" (
    "ID_Tiempo" int,
    "fecha_pedido" date,
    "Dia" int,
    "Mes" int,
    "Trimestre" int,
    "Anio" int,
primary key ("ID_Tiempo")
)

CREATE TABLE "DIM_Producto" (
    "ID_producto" int,
    "CodigoProducto" nvarchar(15),
    "Categoria" int,
    "Codigo" nvarchar(15),
    "nombre" nvarchar(70),
    "precio_venta" numeric(15,2),
primary key ("ID_producto")
)

CREATE TABLE "Ventas" (
    "ID_venta" int,
    "ID_tiempo" int,
    "ID_producto" int,
    "total_venta" int,
    "total_cantidad" int,
primary key ("ID_venta")
)