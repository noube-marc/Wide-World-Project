# Wide-World-Project
# ☁️ Migration et Valorisation de la base Wide World Importers vers Azure

Ce projet vise à migrer la base de données **Microsoft Wide World Importers** vers un environnement **cloud Azure**, en mettant en œuvre une **architecture en médaillon (medallion architecture)**, et en exploitant les données via un **tableau de bord Business performant**.

---

## 🚀 Objectifs

- Migrer les données **on-premise** vers un environnement **Azure Data Lake**.
- Structurer l’architecture de la donnée en **zones Bronze, Silver, Gold** selon les meilleures pratiques modernes.
- Mettre en place des processus **ETL** robustes avec **Azure Data Factory**, **Azure Synapse** et **Azure Databricks**.
- Créer un **dashboard BI interactif** permettant d’analyser les données importées avec précision et fluidité.

---

## 🧱 Architecture mise en place

### 🔹 Architecture en Médaillon

| Zone    | Description                                                                 |
|---------|-----------------------------------------------------------------------------|
| **Bronze** | Ingestion brute des données sources (fichiers plats, SQL export, etc.)         |
| **Silver** | Nettoyage, normalisation, typage, jointures essentielles                      |
| **Gold**   | Données prêtes pour l’analyse : enrichies, modélisées et exposées aux outils BI |

---

## 🧰 Technologies utilisées

| Outil / Service           | Rôle                                                        |
|---------------------------|-------------------------------------------------------------|
| **Azure Data Lake**       | Stockage des données (zones Bronze, Silver, Gold)           |
| **Azure Data Factory**    | Orchestration des flux de données (ingestion & transformation) |
| **Azure Synapse**         | Stockage relationnel structuré                              |
| **Power BI**              | Création du rapport interactif                              |
| **Power Query**           | Nettoyage et transformation des données dans Power BI       |
| **Git**                   | Suivi du projet et versionnage                              |

---

## 📊 Tableau de bord BI

Le rapport permet de :

- Suivre les **ventes et la performance des commerciaux**
- Analyser les **performances commerciale** par région, produit et commerciaux
- Identifier les **tendances et anomalies** dans les opérations commerciales
- Offrir une navigation claire grâce à un **menu interactif**

---
