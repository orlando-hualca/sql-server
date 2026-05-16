/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------


Nota: los errores SQL80001 "Sintaxis incorrecta cerca de ':'" y "Sintaxis incorrecta cerca de '.'"
son causados porque las directivas SQLCMD (por ejemplo ":r .\archivo.sql") no son T-SQL y el
analizador/compilador que está evaluando este archivo no está interpretando comandos SQLCMD.

Posibles soluciones (elige una según tu flujo de trabajo):
- Habilitar soporte SQLCMD al publicar/compilar el proyecto (por ejemplo, usar SqlPackage o 
  Visual Studio/SSDT con SQLCMD habilitado para la publicación del dacpac). Las directivas :r
  solo son válidas cuando el procesador SQLCMD las interpreta.
- Incluir el contenido SQL de cada archivo referenciado en vez de usar :r (pegar el SQL de
  categories.data.sql, suppliers.data.sql, etc. en este script).
- Si estás inspeccionando este archivo en una herramienta que no soporta SQLCMD, cambia el
  proceso de compilación/publicación a uno que sí lo haga.

Para poder darte un cambio directo aplicable, indícame:
- Cómo compilas/publicas (Visual Studio/SSDT, sqlpackage, Azure DevOps pipeline, otra),
- Versión de Visual Studio/SSDT o la herramienta que usas.

Mientras tanto dejo las inclusiones originales intactas (necesarias cuando SQLCMD esté activo).
*/

-- Primero, tablas base (sin dependencias)

:r .\clean.data.sql

:r .\categories.data.sql
:r .\suppliers.data.sql
:r .\shippers.data.sql
:r .\region.data.sql

-- Segundo, tablas con 1 dependencia
:r .\territories.data.sql        -- depende de Region
:r .\customers.data.sql           -- sin FK
:r .\employees.data.sql           -- sin FK

-- Tercero, tablas con 2+ dependencias
:r .\products.data.sql            -- depende de Categories y Suppliers
:r .\employeeterritories.data.sql -- depende de Employees y Territories

-- Cuarto, tablas transaccionales
:r .\orders.data.sql              -- depende de Customers, Employees, Shippers
:r .\orderdetails.data.sql        -- depende de Orders y Products
GO
