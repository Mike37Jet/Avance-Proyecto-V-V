# Created by Escobar Alex, Haro Rodrigo, Jacome Emilio, Mendosa Miguel at 6/7/2025
# language: es

Característica: Recordatorio de medicación para la migraña
  Como paciente con migraña,
  Quiero recibir recordatorios en base a mi medicación,
  Para minimizar interrupciones en mi vida diaria

  Esquema del escenario: Recordar toma de medicamentos
    Dado que tengo una medicina prescrita para la migraña
    Y una frecuencia de dosificación cada <frecuencia> horas
    Y una dosis de <cantidad> comprimidos
    Cuando el sistema indica que faltan <minutos_antes> minutos para la toma
    Entonces debo recibir un mensaje indicando que debo tomar mi medicación pronto

    Ejemplos:
      | frecuencia | cantidad |
      | 8          | 2        |



