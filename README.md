# PVC Learning API

Servicio REST para la plataforma de aprendizaje online [PVC Learning](https://pvclearning.lutrias.cl/)

## Requisitos

- Python: version 3.10.12
- Dependencias para la librería [`mysqlclient`](https://pypi.org/project/mysqlclient/)
    - Debian / Ubuntu: `sudo apt-get install python3-dev default-libmysqlclient-dev build-essential`
    - Red Hat / CentOS: `sudo yum install python3-devel mysql-devel`

## Instalacion

Primero un `git clone` del proyecto

```bash
git clone https://github.com/ElWazy/pvc-learning-api.git
cd ./pvc-learning-api
```

Despues crea el entorno de desarrollo en python

```bash
python3 -m venv venv
```

Exporta las variables de conexion a bd en el archivo con `nano ./venv/bin/activate`

- `DB_NAME`: nombre base de datos
- `DB_USER`: nombre usuario de acceso
- `DB_PASSWORD`: contraseña de acceso
- `DB_HOST`: direccion donde se ubica la base de datos
- `DB_PORT`: puerto donde del proceso de la base de datos (generalmente es el 3306)

Ejecuta el entorno virtual

```bash
source venv/bin/activate
```

Instala las librerías

```bash
(venv) pip install -r requirements.txt
```

Corre las migraciones

```bash
(venv) python3 manage.py migrate
```

A trabajar! :raised_hands:

## Utilizando Docker

Modifica las variables de entorno en el `docker-compose.yml`

Para inicializar un proyecto con bd y docker compose

```bash
docker compose up
```

Para hacer una migracion inicial, para crear las tablas...
En otra terminal ejecuta:

```bash
docker exec python manage.py migrate
```
