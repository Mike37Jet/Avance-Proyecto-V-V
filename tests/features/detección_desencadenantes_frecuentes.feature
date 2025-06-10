# Created by migue at 10/6/2025
# language: es
Característica: Detección de desencadenantes frecuentes en la migraña
  Como médico
  Quiero identificar los desencadenantes de la migraña del paciente en función de su sintomatología particular
  Para poder evitarlos y reducir la frecuencia de los episodios

  Antecedentes:
    Dado que soy un médico autenticado en el sistema
    Y el paciente ha registrado factores ambientales y personales junto con sus síntomas

  Escenario: Identificación exitosa de desencadenantes principales
    Dado que el paciente tiene al menos 20 registros completos de síntomas y factores
    Y ha registrado información sobre estrés, alimentación, sueño y factores ambientales
    Cuando ejecuto el análisis de desencadenantes
    Entonces se identifican los 3 desencadenantes más frecuentes
    Y se muestra el porcentaje de correlación de cada desencadenante con los episodios
    Y se genera un informe de recomendaciones preventivas personalizadas
    Y se establece un índice de confianza del análisis superior al 70%

  Escenario: Análisis con datos insuficientes para correlación
    Dado que el paciente tiene menos de 10 registros de factores desencadenantes
    Cuando ejecuto el análisis de desencadenantes
    Entonces se muestra un mensaje "Datos insuficientes para análisis estadístico confiable"
    Y se presentan los factores registrados sin correlación estadística
    Y se solicita al paciente completar más información durante 2 semanas adicionales

  Esquema del escenario: Correlación de desencadenantes específicos
    Dado que el paciente registra <Desencadenante> como factor en <Frecuencia> por ciento de sus episodios
    Y la intensidad promedio cuando está presente este factor es <Intensidad>
    Cuando analizo la correlación de este desencadenante específico
    Entonces se clasifica como <Nivel de correlación>
    Y se incluye en las recomendaciones con prioridad <Prioridad>

    Ejemplos:
      | Desencadenante     | Frecuencia | Intensidad | Nivel de correlación | Prioridad |
      | Estrés laboral     | 85         | 8.2        | Alta                 | 1         |
      | Falta de sueño     | 70         | 7.8        | Alta                 | 2         |
      | Chocolate          | 45         | 6.1        | Moderada             | 3         |
      | Cambios climáticos | 30         | 5.5        | Baja                 | 4         |