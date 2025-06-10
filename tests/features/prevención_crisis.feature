# Created by migue at 10/6/2025
# language: es
Característica: Prevención de crisis
  Como paciente con migraña
  Quiero recibir advertencias y/o recomendaciones cuando existan señales de una posible crisis
  Para poder tomar medidas preventivas y evitar que la migraña avance

  Antecedentes:
    Dado que soy un paciente registrado en el sistema
    Y tengo configuradas las notificaciones de alertas
    Y el sistema tiene mi perfil de patrones de migraña actualizado

  Esquema del escenario: Generación de alertas por diferentes señales
    Dado que registro <Señal de alarma> con intensidad <Intensidad>
    Y según mi historial, esto precede una migraña en <Porcentaje> por ciento de los casos
    Cuando el sistema analiza mis datos actuales
    Entonces recibo una alerta de <Tipo de alerta>
    Y se proporcionan <Número de recomendaciones> recomendaciones específicas
    Y la alerta se envía por <Canal de notificación>

    Ejemplos:
      | Señal de alarma    | Intensidad | Porcentaje | Tipo de alerta | Número de recomendaciones | Canal de notificación |
      | Tensión cervical   | 6/10       | 85         | Alta           | 4                         | Push + SMS            |
      | Sensibilidad a luz | 7/10       | 78         | Alta           | 3                         | Push + Email          |
      | Estrés emocional   | 5/10       | 60         | Moderada       | 3                         | Push                  |
      | Cambio de presión  | 4/10       | 45         | Baja           | 2                         | Push                  |

  Escenario: Respuesta del paciente a la alerta
    Dado que recibo una alerta de posible crisis migranosa
    Cuando confirmo que seguí las recomendaciones preventivas
    Entonces el sistema registra mi respuesta
    Y actualiza la efectividad de las recomendaciones en mi perfil
    Y programa un seguimiento en 2 horas para evaluar la evolución

  Escenario: Alerta falsa positiva
    Dado que recibo una alerta de posible crisis
    Pero no desarrollo síntomas de migraña en las siguientes 6 horas
    Cuando marco la alerta como "falsa alarma"
    Entonces el sistema ajusta los parámetros de mi perfil predictivo
    Y reduce la sensibilidad para ese tipo de señal específica
    Y solicita feedback sobre los factores que pudieron influir