# SSIS-ETL-Sales-Data-Warehouse-Project

## 📌 Overview

This project demonstrates the design and implementation of a complete **ETL (Extract, Transform, Load) pipeline** using **SQL Server Integration Services (SSIS)**.

The pipeline processes raw sales data from CSV files, transforms it, and loads it into a structured **SQL Server Data Warehouse** designed using a **Star Schema architecture**.

The solution includes advanced data warehousing concepts such as:

- Slowly Changing Dimension Type 2 (SCD Type 2)
- Incremental Loading using `LastModified`
- Fact & Dimension modeling
- Surrogate key implementation
- Staging layer processing

---

## 🛠️ Technologies Used

- SQL Server
- SQL Server Integration Services (SSIS)
- Visual Studio Community (SSDT)
- CSV Files
- Data Flow Tasks
- Control Flow Tasks
- Lookup Transformation
- Derived Column Transformation
- Data Conversion Transformation

---

## 🧱 Data Architecture

### ETL Architecture Overview

```text
CSV Files
     ↓
Staging Tables
     ↓
SSIS Transformations
     ↓
Dimension Tables (SCD Type 2)
     ↓
Fact Table
     ↓
Analytics / Reporting
```

### Data Warehouse Model

#### Fact Table

- FactSales

#### Dimension Tables

- DimCustomer (SCD Type 2)
- DimProduct (SCD Type 2)
- DimSalesman
- DimDate (if implemented)

---

## ⚙️ ETL Workflow

### Step 1 — Extract

Sales data is extracted from CSV source files.

### Step 2 — Staging Layer

Raw files are loaded into SQL Server staging tables.

### Step 3 — Transformation

SSIS transformations include:

- Data Conversion
- Derived Columns
- Lookup Transformations
- Key Mapping

### Step 4 — SCD Type 2 Processing

Historical changes are tracked using:

- Start Date
- End Date
- Current Flag

When changes occur:

- Existing records become inactive
- New records are inserted

### Step 5 — Incremental Loading

Incremental processing uses:

`LastModified`

Only new or updated rows are loaded.

### Step 6 — Fact Loading

Fact tables are populated using surrogate keys generated from dimension tables.

---

## 📦 SSIS Project Structure

All ETL operations are organized into modular SSIS packages.

### Packages

- `01_Load_Staging.dtsx`
  - Load CSV data into staging tables

- `02_Load_Dimensions_SCD2.dtsx`
  - Process SCD Type 2 logic

- `03_Load_FactSales.dtsx`
  - Load FactSales table

- `04_Incremental_Load.dtsx`
  - Process incremental updates

---

## 📂 Repository Structure

```text
SSIS_ETL_Project/
│
├── SSIS Packages
│   ├── 01_Load_Staging.dtsx
│   ├── 02_Load_Dimensions_SCD2.dtsx
│   ├── 03_Load_FactSales.dtsx
│   └── 04_Incremental_Load.dtsx
│
├── SQL_Scripts
│
├── screenshots
│   ├── dim-salesman.png
│   ├── dim_customer.png
│   ├── dim_product.png
│   ├── fact_sale.png
│   ├── incremental_load.png
│   ├── olap_diagram.png
│   └── oltp_diagram.png
│
├── docs
│   ├── project_overview.txt
│   └── architecture.txt
│
└── README.md
```

---

## 📊 Project Images

### Dim Salesman

![Dim Salesman](screenshots/dim-salesman.png)

### Dim Customer

![Dim Customer](screenshots/dim_customer.png)

### Dim Product

![Dim Product](screenshots/dim_product.png)

### Fact Sales

![Fact Sales](screenshots/fact_sale.png)

### Incremental Load

![Incremental Load](screenshots/incremental_load.png)

### OLAP Diagram

![OLAP Diagram](screenshots/olap_diagram.png)

### OLTP Diagram

![OLTP Diagram](screenshots/oltp_diagram.png)

---

## ✅ Results

The ETL pipeline successfully:

- Loaded raw CSV files into staging tables
- Implemented SCD Type 2 history tracking
- Performed incremental updates
- Built Star Schema warehouse tables
- Loaded FactSales using surrogate keys
- Improved reporting readiness

---

## 🚀 How to Run

### Step 1

Open solution file:

```text
ProjectName.sln
```

using:

Visual Studio Community + SSDT

### Step 2

Run SQL scripts:

```text
SQL_Scripts/
```

to create:

- Staging tables
- Dimension tables
- Fact tables

### Step 3

Update connection managers inside SSIS packages.

### Step 4

Run packages in order:

1. `01_Load_Staging`
2. `02_Load_Dimensions_SCD2`
3. `03_Load_FactSales`
4. `04_Incremental_Load`

---

## 🎯 Project Purpose

This project demonstrates practical implementation of:

- ETL Pipeline Design
- SSIS Development
- Data Warehousing
- Star Schema Modeling
- Incremental Processing
- Historical Data Tracking
- SCD Type 2 Implementation

---

## 🔮 Future Improvements

- Add SQL Server Agent scheduling
- Add ETL logging
- Add error handling workflow
- Extend OLAP reporting layer
- Add dashboards and visualization
- Integrate automated monitoring

---

## 👨‍💻 Author

Developed as a Data Engineering portfolio project focused on:

- ETL Engineering
- Data Warehousing
- SSIS Pipelines
- SQL Server Development

---

## 📌 Notes

- Educational and portfolio project
- No production or sensitive data included
- Designed for learning enterprise ETL workflows
