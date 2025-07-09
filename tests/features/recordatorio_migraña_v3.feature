# Created by Escobar Alex, Haro Rodrigo, Jacome Emilio, Mendosa Miguel at 6/7/2025
# language: es

Característica: Aseguramiento del tratamiento para la migraña
  #TODO: ASEGURAR es verbo
  Como paciente con tratamiento para la migraña,
  Quiero recordar las actividades definidas,
  Para cumplirlas y minimizar interrupciones en mi vida diaria.

  Esquema del escenario: Recordatorio de toma de medicamentos pendientes
    Dado que el paciente tiene una medicina prescrita para la migraña
    Y una frecuencia de dosificación cada <frecuencia> horas
    Y una duración de <dias> días
    Cuando la hora actual sea <minutos_antes> minutos antes de la hora de la toma
    Entonces se enviará un recordatorio al paciente indicando que debe tomar su medicación pronto

    Ejemplos:
      | frecuencia | dias | minutos_antes |
      | 8          | 2    | 30            |

  Escenario: Confirmación de toma de medicamentos
    Dado que el paciente ha recibido una alerta para tomar su medicación
    Y la hora actual es la hora programada para la toma
    Cuando el paciente confirma que ha tomado la medicación
    Entonces se actualizará el estado del recordatorio a "tomado"

  Escenario: Confirmación de olvido de toma de medicamentos
    Dado que el paciente ha recibido una alerta para tomar su medicación
    Y la hora actual es la hora programada para la toma
    Cuando el paciente confirma que no ha tomado la medicación
    Entonces se actualizará el estado del recordatorio a "no tomado"
    Y se enviará una notificación al paciente sugiriendo que tome su medicación

    #todo: escenario olvidado

  Esquema del escenario: Recordatorio de recomendación de tratamiento
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

