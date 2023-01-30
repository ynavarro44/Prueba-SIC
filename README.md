PRUEBA TÉCNICA
By Yina Navarro Vanegas--- SIC

Instalación:

Utilice librerias de boostrap jquery para un mejor dinamismo del sistema y este sistema permite conexion a la internet. 
Para hacer la instalacion, debe contar con un servidor local, se recomienda usar XAMPP, Donde se instalará apache y MySQL. 

Una vez se cuente con el servidor local, se procede a ejecutar el dump SQL que se cargó en la carpeta basedatos y el archivo llamado nota.sql.
En este se crearán las tablas y registros correspondientes.

Clonar el proyecto con git clone https://github.com/ynavarro44/Prueba-SIC.git (en la respectiva carpeta del servidor local instalado, htdocs para XAMPP y www para apache).

En el archivo conexion se debera especificar la conexión a la base de datos dependiendo el servidor donde esten instalando el sistema. Se debe diligenciar correctamente la información para que funcione correctamente el sistema.

Una vez ejecutado el dump SQL y clonado el proyecto ya puede ejecutar este proyecto en modo local.

Explicación del código:

Este sistema fue montado con PHP puro sin ayuda de ningun framework, separando backend y frontend. Al iniciar el sistema se ejecuta el archivo index.php el cual contiene la vista de las tablas de radicaciones. Este formulario redirecciona a su componente backend llamado login.php.Se puede editar o crear radicados.

Explicación base de datos:
Se cuenta con 3 tablas creadas: personas, t_usuarios, radicadiones y radicaciones_log


datos de acceso al sistema
Datos de acceso: yinanavarrov@gmail.com 


