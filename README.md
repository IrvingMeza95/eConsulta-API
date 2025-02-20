# Proyecto Spring Boot eConsulta Dockerizado

Este proyecto es una aplicación Java basada en Spring Boot, la cual está dockerizada y se despliega utilizando `docker-compose`. Utiliza imágenes públicas de Docker Hub para su ejecución.

## HackaCode 2025

### Descripción del concurso

Este proyecto está participando en **HackaCode 2025**, un concurso dirigido a desarrolladores semisenior, junior y trainees. Su objetivo es brindar la oportunidad a nuevos desarrolladores de adquirir experiencia práctica en el mundo del desarrollo y el trabajo en equipo, replicando un entorno lo más parecido posible al mundo real.

### Participantes del equipo

- Irving Meza
- Fran Carrizo
- Martin Sosa

## Requisitos previos

Antes de ejecutar este proyecto, asegúrese de tener instalados los siguientes programas:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Configuración

### Variables de entorno

# Variables necesarias para el correcto funcionamiento del servicioVerificacion
GMAIL_CLIENT_ID
GMAIL_CLIENT_SECRET
GMAIL_REFRESH_TOKEN
CORREO_GMAIL
MYSQL_PASSWORD

## Ejecución

Para levantar la aplicación junto con sus dependencias, ejecute el siguiente comando:

```
docker-compose up -d
```

Este comando iniciará los contenedores en segundo plano. Para verificar que los contenedores están en ejecución, use:

```
docker ps
```

Si necesita detener la aplicación, ejecute:

```
docker-compose down
```

## Uso de la imagen desde Docker Hub

La aplicación utiliza imágenes públicas de Docker Hub. Puede descargar y ejecutar las imágenes manualmente con:

```
docker pull irvingmeza95/econsulta-noombre_del_servicio:tag
docker run -p puerto_del_servicio:puerto_del_servicio irvingmeza95/econsulta-noombre_del_servicio:tag
```

## Configuración de la base de datos

Una vez que se hayan creado las tablas, ejecute las consultas que se encuentran en el archivo `queries-sql.txt` dentro de la base de datos.

## Uso de endpoints para todos los servicios

Puedes encontrar los archivos de las distintas colecciones de Postman de todos los servicios en la carpeta raíz de cada servicio dentro del repositorio:
[Repositorio en GitHub](https://github.com/IrvingMeza95/eConsulta-Back.git).

En caso de que el repositorio esté en privado, las colecciones se podrán encontrar en el repositorio actual.

## Carga de plantillas HTML

Una vez creadas las tablas, es necesario subir las siguientes plantillas HTML desde la colección de Postman del `servicioVerificacion`:

1. **CODIGO_VERIFICACION_DE_CORREO** con las variables: `nombreUsuario`, `urlAgregarPassword`, `fechaExpiracion`.
2. **CORREO_RECUPERACION_PASSWORD** con las variables: `nombreUsuario`, `urlAgregarPassword`, `fechaExpiracion`.
3. **ENVIO_DE_ARCHIVO** con las variables: `nombreUsuario`, `tipoArchivo`.

