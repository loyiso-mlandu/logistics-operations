# Logistics Operations Analysis

## About the Project

This project looks at logistics operations data using PostgreSQL, SQL and Power BI. The aim was to understand how drivers, routes, trucks and customers performed, and where the business could improve efficiency, revenue and service delivery.

I used SQL to analyse the data and Power BI to build dashboards that make the results easier to explore.

## Tools Used

- **PostgreSQL** — storing and querying the data
- **SQL** — analysing operational and financial performance
- **Power BI** — building interactive dashboards and tracking KPIs

## Analysis Areas

- Driver performance
- Route revenue
- Fleet utilisation
- Maintenance costs and downtime
- Fuel efficiency
- Customer performance
- Safety incidents

## Key Findings

### Driver Performance

- The average on-time delivery rate was **44.60%**, with average fuel efficiency of **6.50 MPG**.
- Average revenue per mile was **$2.15**.
- Only **13 of 124 drivers (10.5%)** performed above the fleet average across all three metrics.
- Jessica Johnson had the highest on-time delivery rate at **50.77%**, while Mary Wilson had the lowest at **36.52%**.

### Route Revenue

- Charlotte, NC → Portland, OR generated the highest total revenue at approximately **$11.23 million**.
- New York, NY → Philadelphia, PA generated the lowest total revenue at approximately **$348,730**.
- Revenue varied considerably between routes, making lane-level performance useful when evaluating where the business generates its income.

### Fleet and Maintenance

- Truck TRK00055 travelled the most miles, at **1,417,530 miles**.
- Truck TRK00044 generated the highest total revenue, at approximately **$3.05 million**.
- TRK00003 had the highest maintenance cost at **$90,161.42** and recorded **1,133.1 hours of downtime**.
- Maintenance cost per mile varied across trucks, providing a useful way to compare maintenance spending against vehicle usage.

### Fuel Efficiency

- Columbus, OH → Philadelphia, PA had the highest recorded fuel spend at approximately **$1.79 million**.
- Atlanta, GA → Chicago, IL had the highest average fuel efficiency at **6.54 MPG**.
- The difference in average MPG across routes was relatively small, so fuel spending should also be considered alongside distance travelled and trip volume.

### Customer Analysis

- XYZ Foods generated the highest recorded customer revenue at approximately **$1.76 million**.
- Of the 200 customers, **168 (84%) were active** and 32 (16%) were inactive.
- Contract customers represented **37.5%** of the customer base, followed by Spot customers at 31.5% and Dedicated customers at 31%.

### Safety

- The dataset contained **170 incidents**, of which 54 (31.8%) were attributed to driver fault.
- DOT violations were the most frequently recorded incident type, with 39 incidents.
- **64 incidents (37.6%)** were classified as preventable.
- Vehicle and cargo damage costs totalled approximately **$2.65 million**.

## Power BI Dashboard

The report contains five pages:

- **Executive Overview** — overall revenue, load volume, delivery performance, fuel efficiency and revenue by route.
- **Driver Performance** — individual driver KPIs and monthly revenue trends.
- **Fleet** — truck performance, fuel costs, maintenance and downtime.
- **Safety** — incident types, driver fault, preventability, injuries and damage costs.
- **Customers** — customer profiles, account status and revenue compared with potential revenue.

The dashboards use KPI cards, charts and interactive filters to explore performance across the different areas.

## Recommendations

Based on the results, the business could:

- Investigate the causes of low on-time delivery performance.
- Compare route revenue with operating costs before making decisions about route profitability.
- Review trucks with high maintenance costs or downtime.
- Monitor fuel spending alongside mileage and MPG.
- Follow up on inactive customers and investigate opportunities to increase revenue from existing accounts.
- Review recurring safety incidents and prioritise preventable causes.

## Project Structure

- `analysis/` — SQL queries for the different analysis areas
- `database/` — database setup scripts
- `datasets/` — project datasets, where applicable
- `README.md` — project overview and findings
