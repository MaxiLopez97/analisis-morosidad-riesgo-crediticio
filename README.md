# 📊 Análisis de Morosidad y Riesgo Crediticio

## 📝 Descripción del Proyecto
Este proyecto simula un análisis exploratorio de datos de morosidad y riesgo crediticio para una cartera de créditos. El objetivo principal es identificar patrones de impago, segmentar el riesgo de la cartera y evaluar exposiciones financieras mediante la combinación de **SQL / phpMyAdmin** (para la gestión de bases de datos relacionales y consultas complejas) y **Excel** (para la creación de planillas ejecutivas y paneles de control).

---

## 🛠️ Tecnologías y Herramientas Utilizadas
* **SQL / phpMyAdmin:** Creación de bases de datos relacionales, llaves primarias y foráneas, uniones complejas (`JOINs`), funciones de agregación y categorización de buckets de riesgo (`CASE WHEN`).
* **Excel (.xls):** Modelado de datos financieros, fórmulas automatizadas y formato ejecutivo.
* **Git & GitHub:** Control de versiones y documentación profesional del proyecto.

---

## 🗂️ Estructura del Repositorio
```text
analisis-morosidad-riesgo-crediticio/
│
├── data/
│   └── raw/                  # Datasets iniciales (clientes, créditos y pagos en CSV)
├── excel/
│   └── dashboard_morosidad.xls  # Planilla ejecutiva multi-hoja con KPIs y fórmulas
├── sql/
│   ├── 01_create_tables.sql  # Script de creación de la base de datos relacional
│   └── 03_queries_analysis.sql # Consultas analíticas y cálculo de KPIs de riesgo
├── screenshots/
│   ├── estructura_tablas.png    # Evidencia visual de la BD en phpMyAdmin
│   └── resultado_consulta.png   # Evidencia visual de las consultas SQL ejecutadas
└── README.md                 # Documentación principal del proyecto
