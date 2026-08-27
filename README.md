 Análisis de Morosidad y Riesgo Crediticio

Descripción del Proyecto
Este proyecto simula un análisis exploratorio de datos de morosidad y riesgo crediticio para una cartera de créditos. El objetivo principal es identificar patrones de impago, segmentar el riesgo de la cartera y evaluar exposiciones financieras mediante la combinación de **SQL** (para la extracción, limpieza y modelado relacional) y **Excel** (para la creación de tablas dinámicas y dashboards interactivos).

---

Tecnologías y Herramientas Utilizadas
* **SQL:** Consultas complejas, uniones relacionales (`JOINs`), funciones de agregación, sentencias condicionales (`CASE WHEN`) y categorización de buckets de riesgo.
* **Excel:** Modelado de datos, tablas dinámicas avanzadas y construcción de paneles de control (Dashboards).
* **Git & GitHub:** Control de versiones y documentación del proyecto.

---

Estructura del Repositorio
```text
analisis-morosidad-riesgo-crediticio/
│
├── data/
│   └── raw/                  # Datasets iniciales (clientes, créditos y pagos)
├── sql/
│   ├── 01_create_tables.sql  # Script de creación de la base de datos relacional
│   └── 03_queries_analysis.sql # Consultas analíticas y cálculo de KPIs de riesgo
└── README.md                 # Documentación principal del proyecto
