# Created by Escobar Alex, Haro Rodrigo, Jacome Emilio, Mendosa Miguel at 6/7/2025
# language: es

Característica: Asegurar el tratamiento para la migraña
  Como paciente con tratamiento para la migraña,
  Quiero recordar las actividades definidas,
  Para cumplirlas y minimizar interrupciones en mi vida diaria.

  Recordatorio de toma de medicamentos pendientes
  Recordatorio confirmado de toma medicamento del tratamiento
  Recordatorio no confirmado de medicamento del tratamiento

  Esquema del escenario: Recordar toma de medicamentos pendientes
    Dado que el paciente tiene una medicina prescrita para la migraña
    Y una frecuencia de dosificación cada <frecuencia> horas
    Y una duración de <dias> días
    Cuando la hora actual sea <minutos_antes> minutos antes de la hora de la toma
    Entonces se enviará un recordatorio al paciente indicando que debe tomar su medicación pronto

    Ejemplos:
      | frecuencia | dias | minutos_antes |
      | 8          | 2    | 30            |

  Escenario: Confirmar toma de medicamentos
    Dado que el paciente ha recibido un recordatorio para tomar su medicación
    Y la hora actual es la hora programada para la toma
    Cuando el paciente confirma que ha tomado la medicación
    Entonces se actualizará el estado del recordatorio a "confirmado positivo"

  Escenario: No confirmar toma de medicamentos
    Dado que el paciente ha recibido un recordatorio para tomar su medicación
    Y la hora actual es la hora programada para la toma
    Cuando el paciente no confirma que ha tomado la medicación
    Entonces se actualizará el estado del recordatorio a "no confirmado"
    Y se enviará una notificación al paciente sugiriendo que tome su medicación

  Esquema del escenario: Recordar recomendación de tratamiento
    Dado que el paciente tiene una recomendación de tratamiento para la migraña
    Cuando sea las <horas> del día
    Entonces se notificará mediante un recordatorio sugiriendole seguir esta recomendación

    Ejemplos:
      | horas |
      | 9     |
      | 18    |
    # Identificar el valor
    # Agregar un estado a la notificacion
    # Confirmacion del tratamiento
    #

