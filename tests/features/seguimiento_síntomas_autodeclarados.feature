# Created by migue at 10/6/2025
# language: es
Característica: Seguimiento de síntomas autodeclarados
  Como médico
  Quiero consultar fácilmente los registros de síntomas autodeclarados por mis pacientes
  Para comprender la evolución de su migraña y ajustar su tratamiento de manera oportuna y efectiva

  Antecedentes:
    Dado que soy un médico autenticado en el sistema
    Y tengo pacientes asignados con diagnóstico de migraña

   Esquema del escenario: Consulta exitosa de registros con datos suficientes
    Dado que el paciente tiene registrados <Número de registros> síntomas en los últimos <Período> días
    Y cada registro contiene información completa de síntomas
    Cuando consulto los registros de síntomas del paciente
    Entonces se muestra una línea de tiempo con la evolución de los síntomas
    Y se visualiza la tendencia de intensidad del dolor
    Y se resalta cualquier patrón identificado automáticamente
    Y se muestra el tiempo de respuesta menor a 3 segundos

    Ejemplos:
      | Número de registros | Período |
      | 15                  | 30      |
      | 8                   | 15      |
      | 25                  | 60      |

  Escenario: Consulta con datos insuficientes
    Dado que el paciente tiene menos de 3 registros de síntomas
    Cuando consulto los registros de síntomas del paciente
    Entonces se muestra un mensaje indicando "Datos insuficientes para análisis de tendencias"
    Y se muestran los registros disponibles en formato lista
    Y se sugiere al paciente completar más registros

  Escenario: Filtrado de registros por período específico
    Dado que el paciente tiene registros de síntomas en diferentes períodos
    Cuando selecciono el filtro de fecha desde "01/01/2024" hasta "31/01/2024"
    Entonces se muestran únicamente los registros dentro del período seleccionado
    Y se actualiza el gráfico de evolución para el período filtrado
    Y se mantiene la funcionalidad de exportación de datos