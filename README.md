PRUEBA TECNICA
By Yina Navarro Vanegas--- SIC

Instalación
Utilice librerias de boostrap jquery para un mejor dinamismo del sistema y este sistema permite conexion a la internet. 
Para hacer la instalacion, debe contar con un servidor local, se recomienda usar XAMPP, Donde se isntalará apache y MySQL. 

Una vez se cuente con el servidor local, se procede a ejecutar el dump SQL que se cargó en la carpera sql y el archivo llamado basedatos_sic.sql. En este se crearán las tablas y registros correspondientes del sistema.

Clonar el proyecto con git clone https://github.com/ynavarro44/Prueba-SIC.git (en la respectiva carpeta del servidor local instalado, htdocs para XAMPP y www para apache).

En el archivo conexion se debera especificar la conexión a la base de datos dependiendo el servidor donde esten instalando el sistema. Se debe diligenciar correctamente la información para que funcione correctamente el sistema.

Una vez ejecutado el dump SQL y clonado el proyecto ya puede ejecutar este proyecto en modo local.

Explicación del código
Este sistema fue montado con PHP puro sin ayuda de ningun framework, separando backend y frontend. Al iniciar el sistema se ejecuta el archivo index.php el cual contiene el formulario de inició de sesión. Este formulario redirecciona a su componente backend llamado login.php. Una vez dentro del sistema se ejecuta el welcome.php que es el front end donde se visualizan las radicaciones. Se puede editar o crear radicados, con el cual ingresa a la parte frontend de la respectiva elección y una vez diligenciado, se ejecuta la parte backend de dicha acción.

Explicación base de datos
Se cuenta con 3 tablas creadas, usuarios, radicadiones y radicaciones_log

Tabla usuarios Tiene los campos relevantes del usuario su correo para iniciar sesión y su clave que aún no tiene codificación, tiene una columa de intentos en la cual al superar 3 intentos el sistema cambia su estado a bloqueado. Una vez vuelva a ingresar correctamente y si el usuario ya esta bloqueado se muestra una alerta indicando que el usuario fue bloqueado. Para realizar las pruebas pueden volver siempre el estado a "1" por la base de datos y esto automaticamente desbloquea el usuario.

Tabla radicaciones. Tiene los campos relevantes de los radicados con una fecha definida como TIMESTAMP de la creación del radicado y un asocio con la tabla usuarios por el campo fk_usuario_Crea (FK usuarios - id_usuario)

Tabla radicaciones_log. Se alamacena cada tipo de transacción realizado en la tabla transacciones, en la cual registra si se realizó un insert o un update, el usuario que lo realizó y la fecha con hora (TIMESTAMP)

datos de acceso al sistema
Datos de acceso: yinanavarrov@gmail.com 
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Doc
