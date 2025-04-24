# Automatización de ejecución mensual EIS  

## Eduardo Romero – Abril 2025

---

## Problema actual

- Ejecución manual 2-3 veces al mes
- Se cargan datos día por día (ej: `250401`, `250402`, ...)
- Alto riesgo de errores por tecleo
- Proceso lento, repetitivo, propenso a omisiones o a saltos de dias

---

## Solución propuesta

- Script `.bat` con bucle automatizado
- Parámetros modificables en `configuracion.bat`
- Automatiza ejecución de:
  - `cargar.pl -C0 250401`
  - `calcular.pl 250401`
- Incluye pausas para evitar colisiones

---

## ¿Cómo funciona?

*Estructura del proyecto

- Ejecuta los scripts en bucle, avanzando día a día hasta la fecha indicada

1. `configuracion.bat`:
   - Año/Mes (`ANHO_MES`)
   - Rango de días (`DIA_INICIO`, `DIA_FIN`)
   - Tiempo de espera (`TIEMPO_ESPERA`)
2. `finEIS.bat`:
   - Lee la configuración
   - Ejecuta los scripts en bucle, hasta que termina la fecha que pidan

---

## Beneficios

- Ahorro de tiempo  
- Cero riesgo de errores de tipeo  
- Configurable y adaptable  
- Escalable a nuevas mejoras

---

## Próximos pasos

- Logs a archivo externo
- Validación de errores
- Crear una tarea parecida para bajar la carga al ejecutar los I11 asociados al mismo proceso
- Notificaciones al finalizar
- Este proyecto sienta base para otras automatizaciones similares.

---
