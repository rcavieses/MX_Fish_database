# Fishing Database

## Descripción

Esta base de datos está diseñada para gestionar y analizar información relacionada con la actividad pesquera, incluyendo informes de pesca, permisos pesqueros, y el sistema de monitoreo de embarcaciones. La base de datos está estructurada en tres tablas principales: `fishing_reports`, `fisheries_permit`, y `vessel_monitor_system`.

## Estructura de la Base de Datos

### Tablas

#### `fishing_reports`

Esta tabla almacena información detallada sobre los informes de pesca, como:

- **id**: Identificador único del informe.
- **rnp**: Registro Nacional de Pesca del activo.
- **nombre_activo**: Nombre del activo (embarcación o equipo).
- **clave_sitio_desembarque**: Clave del sitio de desembarque.
- **nombre_sitio_desembarque**: Nombre del sitio de desembarque.
- **rnpa_unidad_economica**: RNPA de la unidad económica.
- **unidad_economica**: Nombre de la unidad económica.
- **estado**: Estado donde se realizó el desembarque.
- **clave_oficina**: Clave de la oficina de pesca.
- **nombre_oficina**: Nombre de la oficina de pesca.
- **tipo_aviso**: Tipo de aviso reportado.
- **folio_aviso**: Folio del aviso.
- **fecha_aviso**: Fecha del aviso.
- **origen**: Origen de los datos.
- **clave_lugarcaptura**: Clave del lugar de captura.
- **nombre_lugarcaptura**: Nombre del lugar de captura.
- **numero_embarcaciones**: Número de embarcaciones involucradas.
- **mes_corte**: Mes de corte de los datos.
- **año_corte**: Año de corte de los datos.
- **periodo_inicio**: Fecha de inicio del período de captura.
- **periodo_fin**: Fecha de fin del período de captura.
- **duracion**: Duración en días del período de captura.
- **dias_efectivos**: Días efectivos de operación.
- **tipo_zona**: Tipo de zona de captura.
- **produccion_acuacultural**: Información sobre producción acuacultural, si aplica.
- **numero_permiso**: Número del permiso de pesca.
- **fecha_expedicion**: Fecha de expedición del permiso.
- **fecha_vigencia**: Fecha de vigencia del permiso.
- **nombre_principal**: Nombre principal de la especie capturada.
- **clave_especie**: Clave de la especie.
- **nombre_especie**: Nombre de la especie capturada.
- **peso_desembarcado_kilogramos**: Peso desembarcado en kilogramos.
- **peso_vivo_kilogramos**: Peso en vivo en kilogramos.
- **precio_pesos**: Precio en pesos mexicanos.
- **valor_pesos**: Valor total en pesos mexicanos.
- **litoral**: Litoral asociado a la captura.

#### `fisheries_permit`

Esta tabla contiene información sobre los permisos de pesca, incluyendo:

- **id**: Identificador único del permiso.
- **tipo_embarcacion**: Tipo de embarcación.
- **id_estado**: Identificador del estado.
- **estado**: Nombre del estado.
- **id_municipio**: Identificador del municipio.
- **municipio**: Nombre del municipio.
- **id_localidad**: Identificador de la localidad.
- **localidad**: Nombre de la localidad.
- **rnp**: Registro Nacional de Pesca del titular.
- **unidad_economica**: Nombre de la unidad económica.
- **zona_de_operacion**: Zona de operación de la embarcación.
- **puerto_base**: Puerto base de la embarcación.
- **embarcacion_o_numero_de_embarcaciones**: Número de embarcaciones o detalle de la embarcación.
- **pesqueria**: Pesquería asociada al permiso.
- **permiso**: Número del permiso.
- **fecha_inicio**: Fecha de inicio de la vigencia del permiso.
- **fecha_termino**: Fecha de fin de la vigencia del permiso.
- **artes_de_pesca**: Tipos de artes de pesca utilizadas.
- **descripcion_artes_de_pesca**: Descripción detallada de las artes de pesca.
- **observaciones**: Observaciones adicionales.
- **subserie**: Subserie del permiso.

#### `vessel_monitor_system`

Esta tabla registra la ubicación y el estado de las embarcaciones en tiempo real o en momentos específicos, con los siguientes campos:

- **id**: Identificador único del registro.
- **unidad_economica**: Nombre de la unidad económica.
- **rnp**: Registro Nacional de Pesca del activo.
- **puerto_base**: Puerto base de la embarcación.
- **fecha**: Fecha del registro.
- **latitud**: Latitud de la ubicación de la embarcación.
- **longitud**: Longitud de la ubicación de la embarcación.
- **velocidad**: Velocidad de la embarcación en nudos.
- **rumbo**: Rumbo de la embarcación.

## Requerimientos de Instalación

Para utilizar esta base de datos en tu entorno, necesitarás:

- Python 3.x
- SQLAlchemy
- ERAlchemy (opcional para generación de diagramas)
- SQLite (o el motor de base de datos de tu elección)

### Instalación de Dependencias

Puedes instalar las dependencias necesarias utilizando pip:

```bash
pip install sqlalchemy eralchemy
