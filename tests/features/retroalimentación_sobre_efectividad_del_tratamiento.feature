# Created by migue at 10/6/2025
# language: es
Característica: Retroalimentación sobre la efectividad percibida del tratamiento
  Como paciente con migraña
  Quiero expresar cómo percibo la efectividad del tratamiento que sigo
  Para que se puedan hacer ajustes que mejoren su impacto sobre mis síntomas

  Antecedentes:
    Dado que soy un paciente con tratamiento activo para migraña
    Y he estado siguiendo el tratamiento por al menos 2 semanas
    Y tengo registros de síntomas antes y durante el tratamiento

  Esquema del escenario: Evaluación de efectividad con diferentes resultados
    Dado que he seguido el tratamiento durante <Período> semanas
    Y mi frecuencia de episodios cambió de <Frecuencia inicial> a <Frecuencia actual> por semana
    Y mi intensidad promedio cambió de <Intensidad inicial> a <Intensidad actual>
    Cuando evalúo la efectividad de mi tratamiento
    Entonces califico la efectividad como <Calificación efectividad> del 1 al 5
    Y el sistema calcula una mejora objetiva del <Porcentaje de mejora> por ciento
    Y se genera un reporte de <Estado del tratamiento> para el médico

    Ejemplos:
      | Período | Frecuencia inicial | Frecuencia actual | Intensidad inicial | Intensidad actual | Calificación efectividad | Porcentaje de mejora | Estado del tratamiento |
      | 4       | 3                  | 1                 | 8                  | 4                 | 5                        | 75                   | Muy efectivo           |
      | 6       | 2                  | 2                 | 7                  | 6                 | 3                        | 15                   | Parcialmente efectivo  |
      | 3       | 1                  | 2                 | 6                  | 8                 | 1                        | -25                  | No efectivo            |
      | 8       | 4                  | 0                 | 9                  | 0                 | 5                        | 100                  | Completamente efectivo |

  Escenario: Evaluación con efectos secundarios
    Dado que estoy evaluando la efectividad de mi tratamiento
    Cuando indico que experimento efectos secundarios
    Entonces puedo seleccionar los efectos secundarios específicos de una lista
    Y califico la severidad de cada efecto secundario del 1 al 5
    Y proporciono una evaluación general considerando beneficios vs efectos secundarios
    Y esta información se incluye en la recomendación de ajuste de tratamiento

  Escenario: Solicitud de ajuste de tratamiento
    Dado que califico la efectividad de mi tratamiento como 2 o menor
    Cuando confirmo mi evaluación
    Entonces se genera automáticamente una solicitud de revisión de tratamiento
    Y se programa una alerta para el médico tratante
    Y se me ofrece la opción de solicitar una cita prioritaria
    Y se sugieren medidas paliativas temporales mientras se ajusta el tratamiento
