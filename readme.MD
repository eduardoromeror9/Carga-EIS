# Automatización de ejecución mensual EIS

## Eduardo Romero – Abril 2025

---

## Problema actual

- Ejecución manual 2-3 veces al mes.
- Se cargan datos día por día (ej: `250401`, `250402`, ...)
- Alto riesgo de errores por tecleo.
- Proceso lento, repetitivo, y propenso a omisiones.

---

## Solución propuesta

- Script `.bat` con bucle automatizado.
- Parámetros modificables en `configuracion.bat`
- Automatiza la ejecución de:
  - `cargar.pl -C0 250401`
  - `calcular.pl 250401`
- Incluye pausas para evitar colisiones.

---

## ¿Cómo funciona?

1. `finEIS.bat`:
   - Lee la configuración.
   - Ejecuta el script en bucle, hasta que termina la fecha solicitada.
2. `configuracion.bat`:
   - Año/Mes (`ANHO_MES`)
   - Rango de días (`DIA_INICIO`, `DIA_FIN`)
   - Tiempo de espera (`TIEMPO_ESPERA`)

---

## Beneficios

- Ahorro de tiempo.
- Disminuir el riesgo en los errores de tipeo.
- Proceso más mucho mas eficiente.
- Configurable y adaptable.
- Escalable a nuevas mejoras.
- Este proceso no toca directamente el proceso original, solo ejecuta el script de carga y cálculo automáticamente.

---

## Próximos pasos

- Logs a archivo externo.
- Validación de errores.
- Crear un script parecido para bajar la carga y errores al ejecutar los I11 asociados al mismo proceso.
- Notificaciones al finalizar.
- Este proyecto sienta base para otras automatizaciones similares.

---
