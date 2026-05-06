Dominio de negocio seleccionado: Ventas de productos (Northwind)
Alcance del sistema
El sistema gestiona las ventas de una empresa comercializadora de productos alimenticios. Permite registrar clientes, empleados, productos, categorías, proveedores, pedidos y sus líneas de detalle, así como la gestión de territorios y transportistas. El objetivo del Data Warehouse es analizar las ventas (cantidad, ingresos, descuentos) por cliente, producto, empleado, transportista y a lo largo del tiempo.

1. Modelo OLTP (normalizado hasta 3FN)
[Customers] ──┐
              ├── [Orders] ──┐
[Employees] ──┘               ├── [OrderDetails] ── [Products] ── [Categories]
[Shippers] ──────────────────┘                       │
                                                      └── [Suppliers]
[Region] ── [Territories] ── [EmployeeTerritories] ───┘
[CustomerDemographics] ── [CustomerCustomerDemo] ── [Customers]

Script SQL de creación (OLTP)
El script crea la base de datos Northwind_OLTP, todas las tablas con sus claves primarias y foráneas (dentro del CREATE TABLE)

2. Modelo Data Warehouse (Esquema estrella)

Diagrama dimensional
[DimDate] ────────┐
[DimCustomer] ────┤
[DimProduct] ─────┼── [FactOrderDetails]
[DimEmployee] ────┤
[DimShipper] ─────┘
