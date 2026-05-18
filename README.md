# Northwind BI Solution - OLTP y Data Warehouse

## Descripción
Proyecto académico que implementa una base de datos transaccional (Northwind) normalizada hasta 3FN y un Data Warehouse en esquema estrella para análisis de ventas.

## Modelos
- **OLTP**: [Ver diagrama](/Imagenes/OLTP.png)
- **Data Warehouse**: [Ver diagrama estrella](/Imagenes/DW.png)

## Scripts SQL
- OLTP: [carpeta scripts/OLTP](/Archivos/ScripOLTP/oltp.sql)
- DW: [carpeta scripts/DW](/Archivos/ScripDW/dw.sql)

## ETL
- **Product**: [Ver diagrama](./Imagenes/product.png)
- **Shipper**: [Ver diagrama](./Imagenes/shipper.png)
- **Customer**: [Ver diagrama](./Imagenes/customer.png)
- **Employee**: [Ver diagrama](./Imagenes/employee.png)
- **Orders**: [Ver diagrama](./Imagenes/orders.png)
- **Pruebas**:
    -- **ListaOriginal Shipper**: [Ver](/Imagenes/Lista%20originalShipper.png)
    -- **Update en Shipper**[Ver](/Imagenes/cambioShipper.png)
    -- **Resultado**[Ver](/Imagenes/CambioRealizado.png)


## Despliegue
1. Ejecutar scripts de OLTP en orden numérico.
2. Ejecutar scripts de DW (crear base, tablas).

## Integrantes
1. Orlando Hualca Yavi