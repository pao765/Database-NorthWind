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

 ## Modelo de Datos

### 1. Modelo OLTP

**Características:**
- Normalización: **3FN** (Tercera Forma Normal)
- **13 tablas** (Customers, Products, Orders, OrderDetails, Employees, Categories, Suppliers, Shippers, Region, Territories, EmployeeTerritories, CustomerDemographics, CustomerCustomerDemo)
- **13 claves primarias**
- **17 claves foráneas**
- **20 índices** para optimización
- **8 check constraints** para validación de datos

 ### 2. Modelo Data Warehouse

**Características:**
- Tipo de esquema: **Estrella (Star Schema)**
- **6 tablas de dimensión**: DimDate, DimCustomer, DimEmployee, DimProduct, DimGeography, DimShipper
- **1 tabla de hechos**: FactSales
- **5 relaciones** (claves foráneas desde la tabla de hechos hacia las dimensiones)

  
## Instrucciones para Desplegar

 Abrir SSMS y conectarse al servidor
Ejecutar scripts en orden (OLTP Y DW)




