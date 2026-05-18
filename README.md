# NorthWind - Base de Datos OLTP y Data Warehouse

 # Integrantes de grupo
Paola Aleida Soto Choque
Edgar Fausto Copa Lopez

##  Descripción
El proyecto implementa una solución completa de base de datos para NorthWind, una empresa de ventas. La solución consta de dos componentes principales:
**OLTP** Base de datos transaccional para operaciones diarias 
**Data Warehouse**  Modelo estrella para análisis y reporting de ventas
 
## Dominio del Negocio
 Ventas de productos
## Arquitectura de la Solucion 
       OLTP (NorthWind)
               ↓
        Procesos ETL (SSIS)
               ↓
          Staging Area
               ↓
        Data Warehouse
               ↓
        Reportes y análisis
        
 ## Modelo de Datos

### 1. Modelo OLTP

**Características:**
- Normalización: **3FN** (Tercera Forma Normal)
- **13 tablas** (Customers, Products, Orders, OrderDetails, Employees, Categories, Suppliers, Shippers, Region, Territories, EmployeeTerritories, CustomerDemographics, CustomerCustomerDemo)
- **13 claves primarias**
- **17 claves foráneas**
- **20 índices** para optimización
- **8 check constraints** para validación de datos
**Tablas principales**
 -Customers
 -Orders
 -Order Details
 -Products
 -Employees
 -Categories
 -Suppliers
 -Shippers

 ### 2. Modelo Data Warehouse

**Características:**
- Tipo de esquema: **Estrella (Star Schema)**
- **6 tablas de dimensión**: DimDate, DimCustomer, DimEmployee, DimProduct, DimGeography, DimShipper
- **1 tabla de hechos**: FactSales
- **5 relaciones** (claves foráneas desde la tabla de hechos hacia las dimensiones)
  
**Tablas de demensiones**
 -DimDate
 -DimCustomer
 -DimEmployee
 -DimProduct
 -DimGeography
 -DimShipper
 
**Tablas de hechos**
 -FactSales
  
## Proyecto ETL (SSIS)

**Herramientas utilizadas**
 SQL Server 2025
 SQL Server Integration Services (SSIS)
 SQL Server Data Tools (SSDT)
 Visual Studio 2022
 
## Procesos ETL Implementados
**Extracción**

Obtención de datos desde la base OLTP mediante:

 OLE DB Source
 Consultas SQL
**Transformación**

Se aplicaron las siguientes transformaciones:

 Lookup
 Data Conversion
 Derived Column
 Conditional Split
**Carga**

 Carga de información hacia:
 
  Tablas de dimensiones
  Tabla de hechos FactSales
  Tablas staging

**Manejo de Errores**

El proyecto incluye:

 Redirección de registros erróneos
 Validación de datos
 Control de integridad
 Logs básicos de ejecución

## Estructura del proyecto
    NorthWindETL/
    │
    ├── ETL/
    │   ├── DimCustomers.dtsx
    │   ├── DimProducts.dtsx
    │   ├── DimEmployees.dtsx
    │   ├── FactSales.dtsx
    │   └── MasterETL.dtsx
    │
    ├── ScriptsSQL/
    │   ├── OLTP.sql
    │   ├── DW.sql
    │   └── staging.sql
    │
    ├── Evidencias/
    │   ├── controlflow.png
    │   ├── dataflow.png
    │   └── execution.png
    │
    └── README.md
      
## Instrucciones de Ejecución
**1. Requisitos**

Instalar:

 SQL Server 2025
 Visual Studio 2022
 SSDT
 SSIS

**2. Configuración**
 Restaurar o ejecutar los scripts OLTP y DW.
 Abrir la solución SSIS en Visual Studio.
 Configurar los Connection Managers.
 Verificar conectividad con:
  Base OLTP
  Data Warehouse

**3. Ejecución**
 Ejecutar primero las dimensiones.
 Ejecutar posteriormente FactSales.
 Validar resultados en el DW.
 
**Validaciones Realizadas**

Se verificó:

 Cantidad de registros cargados
 Integridad referencial
 Correspondencia entre OLTP y DW
 Correcta ejecución de paquetes ETL

