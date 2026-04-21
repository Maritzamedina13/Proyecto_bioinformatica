# MicrobiomeAnalysis

## Descripción
Análisis de diversidad microbiana en muestras de suelo mediante
secuenciación 16S rRNA.

## Objetivos
- Comparar diversidad alfa entre muestras de distintos sitios.
- Identificar OTUs diferencialmente abundantes.
- Evaluar la influencia de variables ambientales registradas en la metadata.
- Determinar la estructura de la comunidad microbiana y su agrupamiento entre muestras mediante análisis de diversidad.

## Estructura del repositorio
- `data/` — datos crudos y procesados
- `scripts/` — código de análisis en R
- `results/` — figuras y tablas de resultados

## Instrucciones de uso
1. Instalar dependencias: `install.packages(c("vegan","phyloseq"))`
2. Ejecutar `scripts/preprocess.R`
3. Ejecutar `scripts/analysis.R`

## Licencia
GNU
