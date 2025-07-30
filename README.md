# mp_transactions: tabla faltante en el SQL del módulo MercadoPago para Prestashop

Desde principios de 2023, los pagos a través del módulo MercadoPago en Prestashop no estaban siendo procesados, impidiendo finalizar las órdenes de compra.

Revisando los logs se descubrió una tabla faltante en la base de datos, revisando el script PHP para la creación de la base de datos del módulo MercadoPago, se detectó que este script omite crear la tabla 'mp_transactions'.

# Solución:

Se crea a mano la tabla faltante y sus campos correspondientes. De esta manera y tras algunas pruebas en sandbox, los pagos se realizaron correctamente y las órdenes se crearon sin errores.
Aquí comparto el script para la creación de la tabla 'mp_transactions'.

## Recuerda sustituir [Db_PREFIX] por el prefijo de las tablas de tu base de datos.
