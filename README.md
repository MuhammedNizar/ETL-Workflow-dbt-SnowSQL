# ETL Workflow with dbt, Snowflake, and Airflow

## Overview

This repository contains an ETL pipeline designed to transform data using dbt, Snowflake as the data warehouse, and Apache Airflow for orchestration. The pipeline extracts data from Snowflake's sample TPCH dataset, transforms it using dbt models, and orchestrates the process with Airflow.

## Features

- **dbt (data build tool)**: For data transformations and modeling.
- **Snowflake**: As the cloud data warehouse.
- **Apache Airflow**: For scheduling and orchestrating the ETL workflow.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Snowflake](https://www.snowflake.com/)
- [dbt](https://www.getdbt.com/)
- [Apache Airflow](https://airflow.apache.org/)
- [Docker](https://www.docker.com/) (for containerization)
