# mp_transactions: tabla faltante en el SQL del módulo MercadoPago para Prestashop

Hace poco me dieron aviso de que los pagos a través del módulo MercadoPago en Prestashop no estaban siendo procesados, impidiendo finalizar las órdenes de compra.

Revisando los logs descubrí una tabla faltante que, por algun motivo, al instalar el módulo en el backoffice de Prestashop, el scrpit en PHP para crear la base de datos y tablas del módulo MercadoPago "olvidó" crear la tabla mp_transactions.

Terminé creando "a mano" la tabla faltante y sus campos correspondientes. De esta manera y tras algunas pruebas en el modo sandbox, los pagos se realizaron correctamente, los logs mostraban un panorama alentador y las órdenes se creaban sin errores.

## Motivación del repo: 
muchas veces en internet no se encuentra información de un error tan particular como éste. Prestashop es un sistema complejo y rebuscado, es imposible que existan soluciones al 100% de errores. 

En este caso particular, si bien se podía hacer desde un script de PHP, a veces es más "directo" meterse en la base de datos y crear a mano las tablas mediante sentencias SQL puras y advertir de manera concisa, posibles errores durante el proceso. Por este motivo, facilito el archivo SQL para quien así lo necesite. 😊

## Recuerda sustituir [Db_PREFIX] por el prefijo de las tablas de tu base de datos.
