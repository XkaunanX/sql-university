# sql-university
UTN - 3rd Year Engineering: Databases – Relational models, SQL, normalization, transactions, constraints,

## Descripcion del Sistema de Registro de Ventas

Este sistema representa un **sistema basico de registro de ventas** que podra ser utilizado por diferentes empresas. A continuacion se detallan las caracteristicas principales:

### Entidades Principales

- **Empresas**: 
  - Cada empresa puede tener **uno o mas usuarios**.
  - Puede registrar y publicar productos organizados por **secciones** y **rubros**.
  - Puede realizar **ventas** a clientes.

- **Usuarios**:
  - Pueden pertenecer a **una o mas empresas**.
  - Tendran diferentes **funciones**, que se determinaran conforme el sistema evolucione.

- **Productos**:
  - Cada empresa puede registrar una cantidad **indeterminada** de productos.
  - Los productos se agrupan en:
    - **Secciones**: Representan el tipo general de producto.
    - **Rubros**: Subgrupos dentro de cada seccion, utilizados para facilitar la busqueda y organizacion de la informacion.

- **Clientes**:
  - Pueden comprar productos de **cualquier empresa**.
  - Cada compra se realiza a **una sola empresa a la vez**.

- **Ventas**:
  - Cada venta queda registrada con un **idVenta**, asociada a la **empresa** que la realiza y al **cliente** que la efectua.
  - Esto permite identificar univocamente cada transaccion.

### Caracteristicas Clave

- Soporte para **multiples empresas y usuarios**.
- **Relacion flexible** entre usuarios y empresas (un usuario puede participar en varias).
- Estructura jerarquica de productos mediante **secciones y rubros**.
- Registro detallado de ventas y asociacion con cliente y empresa.
- Preparado para escalar en funciones segun el crecimiento del sistema.
