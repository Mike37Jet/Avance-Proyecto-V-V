# Created by migue at 10/6/2025
# language: es
Característica: Evaluación de la severidad de los síntomas
  Como médico
  Quiero analizar la severidad de los síntomas de migraña del paciente
  Para mejorar la precisión de mi diagnóstico y adaptar el plan de tratamiento de manera más efectiva

  Antecedentes:
    Dado que soy un médico autenticado en el sistema
    Y el paciente tiene al menos 5 registros de síntomas con escalas de severidad

  Esquema del escenario: Análisis de severidad con diferentes niveles
    Dado que el paciente tiene registros con severidad promedio de <Severidad promedio> en escala de 1-10
    Y el <Porcentaje> por ciento de los episodios son de severidad alta (7-10)
    Cuando accedo al análisis de severidad del paciente
    Entonces se muestra un dashboard con métricas de severidad
    Y se categoriza el paciente como <Categoría de riesgo>
    Y se generan <Número de recomendaciones> recomendaciones específicas de tratamiento
    Y se actualiza automáticamente el perfil de riesgo del paciente

    Ejemplos:
      | Severidad promedio | Porcentaje | Categoría de riesgo | Número de recomendaciones |
      | 8.5                | 80         | Alto riesgo         | 5                         |
      | 5.2                | 30         | Riesgo moderado     | 3                         |
      | 3.1                | 10         | Riesgo bajo         | 2                         |

  Escenario: Comparación de severidad entre períodos
    Dado que el paciente tiene registros de al menos 2 meses consecutivos
    Cuando comparo la severidad entre el mes actual y el anterior
    Entonces se muestra el porcentaje de cambio en la severidad promedio
    Y se identifica si hay mejora, deterioro o estabilidad
    Y se correlaciona con cambios en el tratamiento aplicado

  Escenario: Alerta por severidad crítica
    Dado que el paciente registra 3 episodios consecutivos con severidad 9 o superior
    Cuando se analiza la severidad actual
    Entonces se genera una alerta automática de "Severidad crítica"
    Y se notifica al médico tratante por el canal preferido
    Y se sugiere una cita de seguimiento urgente