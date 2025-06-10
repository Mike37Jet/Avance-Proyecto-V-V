# Created by migue at 10/6/2025
# language: es
Característica: Indicación de la zona del dolor
  Como paciente con migraña
  Quiero indicar la zona específica de mi dolor de cabeza
  Para que el diagnóstico y el tratamiento puedan adaptarse a mi tipo particular de migraña

  Antecedentes:
    Dado que soy un paciente autenticado en el sistema
    Y estoy registrando un nuevo episodio de migraña

  Escenario: Selección de zona específica mediante mapa visual
    Dado que accedo a la función de registro de dolor
    Cuando veo el mapa visual de la cabeza dividido en zonas
    Entonces puedo seleccionar una o múltiples zonas afectadas
    Y puedo indicar la intensidad del dolor en cada zona del 1 al 10
    Y puedo especificar el tipo de dolor (pulsátil, punzante, opresivo, punzante)
    Y se guarda automáticamente la información con timestamp

  Esquema del escenario: Clasificación automática según zona de dolor
    Dado que selecciono como zona principal de dolor <Zona afectada>
    Y registro una intensidad de <Intensidad> en esa zona
    Y el dolor es de tipo <Tipo de dolor>
    Cuando confirmo el registro del episodio
    Entonces el sistema categoriza provisionalmente como <Tipo de migraña>
    Y se almacena para análisis del médico tratante
    Y se sugieren <Número de recomendaciones> recomendaciones inmediatas

    Ejemplos:
      | Zona afectada     | Intensidad | Tipo de dolor | Tipo de migraña    | Número de recomendaciones |
      | Temporal derecha  | 8          | Pulsátil      | Migraña unilateral | 3                         |
      | Frontal bilateral | 6          | Opresivo      | Cefalea tensional  | 2                         |
      | Occipital         | 7          | Punzante      | Migraña posterior  | 4                         |
      | Orbital izquierdo | 9          | Punzante      | Cefalea en cluster | 5                         |

  Escenario: Modificación de zona durante el episodio
    Dado que he registrado un episodio con dolor en zona temporal derecha
    Cuando el dolor migra a la zona frontal después de 2 horas
    Entonces puedo actualizar el registro del mismo episodio
    Y se mantiene el historial de cambios con timestamps
    Y se notifica al médico sobre la evolución del patrón

  Escenario: Comparación con episodios anteriores
    Dado que registro una nueva zona de dolor
    Cuando confirmo el registro
    Entonces el sistema muestra si esta zona es frecuente en mi historial
    Y presenta estadísticas de mis zonas de dolor más comunes
    Y identifica si hay cambios en el patrón habitual de localización