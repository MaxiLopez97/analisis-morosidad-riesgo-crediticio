-- =====================================================================
-- PROYECTO: Análisis de Morosidad y Riesgo Crediticio
-- Script 01: Creación de la Estructura de la Base de Datos 
-- =====================================================================


CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    antiguedad_meses INT,
    segmento VARCHAR(50),
    ingresos_declarados DECIMAL(12, 2)
);


CREATE TABLE creditos (
    credito_id INT PRIMARY KEY,
    cliente_id INT,
    monto_otorgado DECIMAL(12, 2),
    tasa_interes DECIMAL(5, 4),
    plazo_meses INT,
    estado_actual VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);


CREATE TABLE pagos_cuotas (
    pago_id INT PRIMARY KEY,
    credito_id INT,
    numero_cuota INT,
    fecha_vencimiento DATE,
    fecha_pago DATE,
    monto_cuota DECIMAL(12, 2),
    dias_atraso INT,
    FOREIGN KEY (credito_id) REFERENCES creditos(credito_id)
);
