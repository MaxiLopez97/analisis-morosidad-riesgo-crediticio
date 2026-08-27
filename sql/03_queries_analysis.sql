-- =====================================================================
-- PROYECTO: Análisis de Morosidad y Riesgo Crediticio
-- Script 03: Consultas Complejas para el Análisis de Riesgo
-- =====================================================================

-- Consulta 1: Resumen General de Cartera y Exposición por Segmento
-- Permite ver el volumen total prestado y cuántos créditos están en riesgo por segmento de cliente.
SELECT 
    c.segmento,
    COUNT(DISTINCT c.cliente_id) AS total_clientes,
    COUNT(cr.credito_id) AS total_creditos_otorgados,
    SUM(cr.monto_otorgado) AS exposicion_total,
    AVG(cr.tasa_interes) * 100 AS tasa_interes_promedio_porcentaje
FROM clientes c
JOIN creditos cr ON c.cliente_id = cr.cliente_id
GROUP BY c.segmento
ORDER BY exposicion_total DESC;


-- Consulta 2: Análisis de Comportamiento de Pago y Morosidad (Buckets de Atraso)
-- Clasifica los créditos según sus días de atraso registrados en los pagos.
SELECT 
    cr.credito_id,
    c.nombre AS cliente,
    c.segmento,
    cr.monto_otorgado,
    cr.estado_actual,
    p.dias_atraso,
    CASE 
        WHEN p.dias_atraso = 0 THEN 'Al día (Sin Atraso)'
        WHEN p.dias_atraso BETWEEN 1 AND 15 THEN 'Mora Temprana (1-15 días)'
        WHEN p.dias_atraso BETWEEN 16 AND 30 THEN 'Mora Moderada (16-30 días)'
        ELSE 'Mora Crítica (> 30 días)'
    END AS categoria_riesgo
FROM pagos_cuotas p
JOIN creditos cr ON p.credito_id = cr.credito_id
JOIN clientes c ON cr.cliente_id = c.cliente_id
ORDER BY p.dias_atraso DESC;


-- Consulta 3: Tasa de Morosidad General y Monto en Riesgo
-- Calcula el porcentaje de créditos que se encuentran actualmente en mora o castigados 
-- en relación con el total de la cartera.
SELECT 
    COUNT(CASE WHEN estado_actual IN ('En mora', 'Castigado') THEN 1 END) AS creditos_en_riesgo,
    COUNT(credito_id) AS total_creditos,
    ROUND(
        (COUNT(CASE WHEN estado_actual IN ('En mora', 'Castigado') THEN 1 END) * 100.0) / COUNT(credito_id), 
        2
    ) AS porcentaje_morosidad_cartera
FROM creditos;
