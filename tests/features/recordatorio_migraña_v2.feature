# Created by Escobar Alex, Haro Rodrigo, Jacome Emilio, Mendosa Miguel at 6/7/2025
# language: es

Característica: Recordatorio de tratamiento para la migraña
  #todo mejorar este nombre de característica
  Como paciente con tratamiento para la migraña,
  Quiero recibir recordatorios en base a mi tratamiento,
  #Para minimizar interrupciones en mi vida diaria
  #Para cumplir con mi tratamiento de manera efectiva
  Para cumplir con mi tratamiento y mininizar interrupciones en mi vida diaria

  Esquema del escenario: Recordar toma de medicamentos
    Dado que el paciente tiene una medicina prescrita para la migraña
    Y una frecuencia de dosificación cada <frecuencia> horas
    Y una duración de <dias> días
    Cuando la hora actual sea <minutos_antes> minutos antes de la hora de la toma
    Entonces se enviará un recordatorio al paciente indicando que debe tomar su medicación pronto

    Ejemplos:
      | frecuencia | dias | minutos_antes |
      | 8          | 2    | 30            |

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

