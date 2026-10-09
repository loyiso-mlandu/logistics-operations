# Logistics Operations Analysis

An end-to-end logistics data analysis project using **PostgreSQL, SQL, and Power BI** to evaluate operational performance, efficiency, profitability, and service levels.

## 🔎 Project Focus

The analysis covers eight key areas:

1. **Driver Performance** — On-time delivery, fuel efficiency, and revenue per mile
2. **Route Revenue** — Revenue by lane
3. **Fleet Performance** — Miles per truck and revenue per asset
4. **Maintenance Analysis** — Maintenance costs and vehicle downtime
5. **Fuel Efficiency** — MPG and Fuel Cost by Route
6. **Customer Analysis** — Revenue and Customer Profile
7. **Safety Analysis** — Incidents, Preventability, and Damage Costs

## 🛠️ Tools

- **PostgreSQL** — Database management and SQL analysis
- **SQL** — Data preparation, KPI calculation, aggregation, and analysis
- **Power BI** — Data visualization and dashboard development

## 📊 Key Findings

## Driver Performance

**Overall averages**

| Metric | Fleet Average |
|---|---:|
| On-time delivery rate | **44.60%** |
| Miles per gallon | **6.50 MPG** |
| Revenue per mile | **$2.15** |

**Performance highlights**

- **13 of 124 drivers (10.5%)** recorded above-average performance across all three metrics.
- **60 of 124 drivers (48.4%)** recorded an above-average on-time delivery rate.
- **51 of 124 drivers (41.1%)** recorded above-average fuel efficiency.
- **46 of 124 drivers (37.1%)** generated above-average revenue per mile.
- **Jessica Johnson** recorded the highest on-time delivery rate at **50.77%**; **Mary Wilson** recorded the lowest at **36.52%**.
- **Barbara Moore** recorded the highest fuel efficiency at **6.56 MPG**; **Mary Williams** recorded the lowest at **6.44 MPG**.
- **John Davis** recorded the highest revenue per mile at **$2.21**; **Robert Moore** recorded the lowest at **$2.09**.

## Route Revenue

### Average Revenue per Load

- **Charlotte, NC → Portland, OR** recorded the highest average base revenue per load at **$7,077.37**, while **New York, NY → Philadelphia, PA** recorded the lowest at **$148.21**.
- **Seattle, WA → Charlotte, NC** recorded the highest average fuel surcharge at **$891.82**, while **Philadelphia, PA → New York, NY** recorded the lowest at **$13.80**.
- **Kansas City, MO → Charlotte, NC** recorded the highest average accessorial charges at **$74.64**, while **Memphis, TN → Minneapolis, MN** recorded the lowest at **$67.16**.
- **Charlotte, NC → Portland, OR** generated the highest average total revenue per load at **$7,963.96**, while **New York, NY → Philadelphia, PA** generated the lowest at **$237.56**.

### Total Revenue (2022–2024)

- **Philadelphia, PA → Seattle, WA** generated the highest base revenue at **$10.07M**, while **New York, NY → Philadelphia, PA** generated the lowest at **$217.57K**.
- **Seattle, WA → Charlotte, NC** generated the highest total fuel surcharge at **$1.31M**, while **Philadelphia, PA → New York, NY** generated the lowest at **$21.21K**.
- **Columbus, OH → Philadelphia, PA** generated the highest accessorial charges at **$115.10K**, while **Miami, FL → Dallas, TX** generated the lowest at **$94.70K**.
- **Charlotte, NC → Portland, OR** generated the highest total revenue at **$11.23M**, while **New York, NY → Philadelphia, PA** generated the lowest at **$348.73K**.

## Fleet Performance

### Miles per Truck

- **TRK00055** recorded the highest total distance traveled at **1,417,530 miles**, while **TRK00040** recorded the lowest at **1,178,515 miles**.
- **TRK00055** also recorded the highest average distance traveled at **39,376 miles**, while **TRK00040** recorded the lowest at **32,737 miles**.

### Revenue per Truck

- **TRK00044** generated the highest total revenue at **$3.05M**, while **TRK00079** generated the lowest at **$2.53M**.
- **TRK00044** also recorded the highest average revenue at **$84,602.99**, while **TRK00079** recorded the lowest at **$70,334.60**.

## Maintenance Analysis

- **TRK00003** recorded the highest total maintenance cost at **$90,161.42**, while **TRK00083** recorded the lowest at **$11,896.28**.
- **TRK00003** also recorded the highest downtime at **1,133.1 hours**, while **TRK00083** recorded the lowest at **247.9 hours**.
- **TRK00040** had the highest maintenance cost per mile at **$0.06**, while **TRK00083** had the lowest at **$0.01**.

## Fuel Efficiency

- **Columbus, OH → Philadelphia, PA** recorded the highest fuel spend at **$1.79M**, while **Charlotte, NC → Portland, OR** recorded the lowest at **$1.55M**.
- **Atlanta, GA → Chicago, IL** recorded the highest average fuel efficiency at **6.54 MPG**, while **Kansas City, MO → Miami, FL** recorded the lowest at **6.47 MPG**.

## Customer Analysis

- **XYZ Foods** generated the highest recorded revenue at **$1.76M**, while **First Group** generated the lowest at **$1.23M**.
- **75 of 200 (37.5%)** customers are Contract customers.
- **63 of 200 (31.5%)** customers are Spot customers.
- **62 of 200 (31.0%)** customers are Dedicated customers.
- **168 of 200 (84%)** customers are Active.
- **32 of 200 (16%)** customers are Inactive.

## Safety Metrics

- **David Miller** recorded the highest number of incidents, with 7 incidents.
- **Columbus, OH → Portland, OR** recorded the highest number of route-associated incidents, with 10 incidents.
- **DOT violations** were the most common incident type, with 39 incidents.
- **54 of 170 incidents (31.8%)** were attributed to driver fault.
- **137 of 170 incidents (80.6%)** resulted in no injuries.
- **64 of 170 incidents (37.6%)** were classified as preventable.
- Moderate incidents commonly involved weather or traffic, while weather was also associated with severe incidents.

**Financial Impact**

| Metric | Total |
|---|---:|
| Vehicle damage costs | $1,603,561.11 |
| Cargo damage costs | $1,049,610.71 |
| Total claim amount | $2,653,171.82 |
