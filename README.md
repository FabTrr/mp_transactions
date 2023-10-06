# mp_transactions: tabla faltante en el SQL del módulo MercadoPago para Prestashop

Desde principios de 2023, los pagos a través del módulo MercadoPago en Prestashop no estaban siendo procesados, impidiendo finalizar las órdenes de compra.

Revisando los logs se descubrió una tabla faltante en la base de datos, la investigación llevo a revisar el script PHP para la creación de la base de datos del módulo MercadoPago, se determinó que este script omite crear la tabla 'mp_transactions'.

Se crea a mano la tabla faltante y sus campos correspondientes. De esta manera y tras algunas pruebas en sandbox, los pagos se realizaron correctamente y las órdenes se crearon sin errores.

## Motivación del repo: 
muchas veces en internet no se encuentra información de un error tan particular como éste. Prestashop es un sistema complejo y en constante actualización. 

Por este motivo, facilito el archivo SQL para quien así lo necesite.

## Recordá sustituir [Db_PREFIX] por el prefijo de las tablas de tu base de datos.
