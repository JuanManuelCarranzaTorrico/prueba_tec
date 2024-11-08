# Prueba Técnica Flutter

Esta aplicación en Flutter muestra una lista de posts obtenidos de la API [JSONPlaceholder](https://jsonplaceholder.typicode.com/), permitiendo visualizar comentarios de cada post y agregar nuevos posts. Desarrollada en **Flutter 3.16.9**.

## Contenidos

- [Instalación](#instalación)
- [Ejecución](#ejecución)
- [Uso](#uso)
- [Descripción de la Aplicación](#descripción-de-la-aplicación)

## Instalación

1. **Requisitos previos**:
   - [Flutter 3.16.9](https://docs.flutter.dev/get-started/install) o superior.
   - Conexión a Internet para obtener los datos desde la API.

2. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/JuanManuelCarranzaTorrico/prueba_tec.git
   cd prueba_tec
   ```

3. **Instalar dependencias**:
   Dentro de la carpeta del proyecto, ejecutar:
   ```bash
   flutter pub get
   ```

## Ejecución

1. **Iniciar el emulador o conectar un dispositivo**.
2. Ejecutar el proyecto:
   ```bash
   flutter run
   ```

## Uso

La aplicación consta de tres pantallas:

- **Home**: Muestra una lista de posts en un `ListView`. Cada post está representado por una tarjeta (`Card`). Al presionar un post, se navega a una segunda pantalla para ver los comentarios asociados.
- **Pantalla de Comentarios**: Muestra los comentarios del post seleccionado.
- **Pantalla de Nuevo Post**: Al presionar el botón flotante en la pantalla de inicio, se navega a un formulario donde se pueden agregar nuevos posts.

### Pruebas

1. **Listado de posts**: Verifica que se muestren correctamente los posts al cargar la aplicación.
2. **Visualización de comentarios**: Selecciona un post y asegúrate de que se muestren los comentarios.
3. **Añadir nuevo post**: Presiona el botón flotante y completa el formulario para agregar un nuevo post. Verifica que la operación sea exitosa.

## Descripción de la Aplicación

- **API utilizada**: La aplicación consume la API de [JSONPlaceholder](https://jsonplaceholder.typicode.com/) para obtener y mostrar los posts y comentarios.
- **Navegación**: La navegación entre pantallas se maneja con `go_router`.
- **Gestión de estado**: `provider` se utiliza para la gestión del estado global, permitiendo una actualización reactiva de los datos en todas las pantallas.


