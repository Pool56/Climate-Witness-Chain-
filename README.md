# Climate Witness Chain
# Contents

- [Project summary](#project-summary)
  - [The issue we are hoping to solve](#the-issue-we-are-hoping-to-solve)
  - [How our technology solution can help](#how-our-technology-solution-can-help)
  - [Our idea](#our-idea)
- [Technology implementation](#technology-implementation)
- [Judging criteria](#judging-criteria)
  - [Featured software products](#Featured software products)
- [Github repository](#github-repository)
  - [Contributing](#contributing)
  - [Versioning](#versioning)
  - [Authors](#authors)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)


## Project summary
Climate change is amplifying risks across infrastructure, agriculture, and communities. Engineers and policymakers require data-driven tools to measure system resilience, model correlations of disasters, and automatically trigger actions when risk thresholds are exceeded. 
Current workflows rely on  infrastructure design and moderate  statistical analysis, but these tools are often siloed and not linked to rule-based automation.

The MeTTa programming language offers a novel way to unify heterogeneous data  from AutoCAD dimensions, Excel datasets and environmental hazard records  into logical, mathematical and semantic models that can power smart contracts and adaptive climate responses.

### The issue we are hoping to solve
Assessment of dimensions (AutoCAD)

Problem: Engineers often manually calculate flow rates, pipe volumes, and plant capacities from drawings, which is slow and error-prone.

MeTTa Solution: A programmatic way to take AutoCAD parameters (length, diameter, velocity) and automatically compute water flow, greenhouse insulation, and plant capacity for climate-resilient infrastructure.

Mapping correlations of disasters

Problem: Climate events (floods, droughts, earthquakes) are logged separately, without a unified system for identifying patterns and community risk.

MeTTa solution: Assigns unique identifiers to each region and event, computes risk indices, and reveals disaster correlations to guide interventions (e.g., flood-prone regions get reinforced irrigation networks).

Triggering Smart Contracts (Excel + MeTTa)

Problem: Statistical thresholds from Excel (e.g., rainfall deviations > 2σ from mean) are not directly tied to financial or insurance responses.

MeTTa Solution: Embeds these metrics into if-then rules, enabling automatic triggering of insurance payouts, disaster relief funds, or supply-chain adjustments via blockchain smart contracts.

### How our technology solution can help

The solution could help by gathering real time data so as to aid reseachers such as; doctors and pharmacists to make appropriate decisions with regard to designing medical products, accurately analysing weather patterns, creation of code that relates to medical prescription and providing explanation to code.

### Our idea
The idea is creation of an Intelligent  assistant that is able to answer queries with regard to health sciences and climatic patterns.
The future prospects are to have the application placed on hospitals for monitoring status of patients with respiratory conditions.
Test the application performance on pharmaceutical firms so that they could assess the performance of the medications while taking into account environmental factors.
Lastly, the application could be integrated to other softwares that climate scientists have  such as water engineers with regard to prediction of water shortage.

## Technology implementation

Step 1: AutoCAD integration

Export design attributes especially for farmers who are the most impacted by climatic disasters. The aspects being examined include pipe diameters, greenhouse cover thickness, plant footprint into structured data.

MeTTa computes real-time engineering metrics (flow rate, material insulation, plant capacity).

Step 2: Excel integration

Climate and economic datasets stored in Excel sheets (rainfall, yield, disaster costs).

MeTTa queries Excel data for statistical analysis (mean rainfall, variance in crop yield).

Step 3: Disaster correlation engine

Disaster events (flood, drought, earthquake) are logged with region, date, severity.

MeTTa calculates risk indices per region and generates community IDs.

Step 4: Smart contract triggers

When thresholds are breached such as  MeTTa outputs conditions to a blockchain system.

Smart contracts auto-execute this includes release of microinsurance payouts, allocation of emergency water supply, or subsidy distribution

## Judging criteria 
Relevance of MeTTa<img width="861" height="193" alt="image" src="https://github.com/user-attachments/assets/5f896b19-86e3-4d74-b8c3-3705725ad447" />
<img width="1016" height="686" alt="image" src="https://github.com/user-attachments/assets/a27f7ffc-be9a-493a-b66a-6174c9076b43" />


Technical implementation<img width="1031" height="193" alt="image" src="https://github.com/user-attachments/assets/06324848-7857-4dbc-93bf-7cd4febf8898" />
<img width="1482" height="830" alt="image" src="https://github.com/user-attachments/assets/26cc6102-6ab5-45e3-a6df-3d774cd790ca" />

Usability and user experience
<img width="626" height="105" alt="image" src="https://github.com/user-attachments/assets/b6dfc591-d26e-4b52-9edc-7d2869df46d3" />
<img width="1624" height="829" alt="image" src="https://github.com/user-attachments/assets/90569a20-1978-4031-b1df-cbd05b54960b" />


Impact and scalability <img width="904" height="193" alt="image" src="https://github.com/user-attachments/assets/91ce75ac-edf2-4d0a-b981-1824384825db" />

<img width="1676" height="607" alt="image" src="https://github.com/user-attachments/assets/0a71fa77-68cb-41b3-8294-c6b5673fcfd9" />




## Featured software products

AutoCAD → Provides engineering drawings and dimensional data of assets such as pipes, greenhouses, and irrigation systems. These dimensions inform capacity, flow rate, material requirements, and plant spacing.

Microsoft Excel → Performs baseline statistical calculations (mean, variance, standard deviation) from climate and economic datasets, enabling detection of anomalies and performance trends.

MeTTa → Integrates AutoCAD-derived measurements and Excel-calculated metrics into a knowledge graph, where correlations can be mapped (e.g., droughts vs. crop failures). It further enables automated reasoning and triggering of smart contracts once disaster thresholds are detected.



  
## Github repository
# 1.AutoCAD Dimensions → Use case of  Water, Greenhouse material used to cover plants, plant analysis
# ===============================
# AutoCAD Dimension Analysis Code
# ===============================

# Define a pipe with length, diameter, and flow velocity
(pipe "P1" length 100 diameter 0.5 velocity 2)

# Calculate water flow using formula Q = Area * Velocity
# Area = π * (diameter/2)^2
(calc-pipe-flow
    (pipe $id length $l diameter $d velocity $v)
    (= $area (* 3.1416 (* (/ $d 2) (/ $d 2))))   # Area = πr²
    (= $flow (* $area $v))                        # Flow = Area * velocity
    (return $flow)
)

# Define greenhouse cover with thickness and material type
(greenhouse "GH1" thickness 0.01 material "polyethylene")

# Calculate insulation factor based on thickness
(calc-insulation
    (greenhouse $id thickness $t material $m)
    (= $insulation (* 200 $t))                    # Example formula: factor = 200 * thickness
    (return $insulation)
)

# Define plant size in length, width, and thickness
(plant "Plant1" length 0.5 width 0.3 thickness 0.1)

# Calculate plant volume
(calc-plant-volume
    (plant $id length $l width $w thickness $t)
    (= $volume (* $l $w $t))                      # Volume = L * W * T
    (return $volume)
)


# 2. Disaster correlation and  region identifiers
# ================================
# Disaster Mapping & Correlation
# ================================

# Define regions with disasters, severity, and time
(disaster "Flood" region "R1" severity 8 time 2020)
(disaster "Drought" region "R1" severity 6 time 2021)
(disaster "Earthquake" region "R2" severity 9 time 2022)

# Assign a unique identifier to a disaster event
(assign-id
    (disaster $type region $r severity $s time $t)
    (= $id (+ (* $s 1000) $t))      # ID formula: severity*1000 + year
    (return $id)
)

# Map correlations between disasters in same region
(map-correlation
    (disaster $type1 region $r severity $s1 time $t1)
    (disaster $type2 region $r severity $s2 time $t2)
    (= $diff (- $t2 $t1))           # Time gap between disasters
    (= $severity-gap (- $s2 $s1))   # Change in severity
    (return (list $diff $severity-gap))
)

# 3.  Excel Data → Standard deviation analysis and  Smart contracts
# ============================================
# Excel Data Analysis & Smart Contract Triggers
# ============================================

# Import numbers from Excel (simulated as dataset)
(excel-data "rainfall" values (100 120 90 80 110))

# Calculate mean rainfall
(calc-mean
    (excel-data "rainfall" values $vals)
    (= $sum (reduce + $vals))                    # Sum of all values
    (= $n (length $vals))                        # Count of values
    (= $mean (/ $sum $n))                        # Mean = sum/n
    (return $mean)
)

# Calculate standard deviation
(calc-stddev
    (excel-data "rainfall" values $vals)
    (= $mean (calc-mean (excel-data "rainfall" values $vals)))
    (= $sqdiffs (map (lambda $x (- $x $mean)^2) $vals)) # Squared diffs
    (= $variance (/ (reduce + $sqdiffs) (length $vals)))
    (= $stddev (sqrt $variance))
    (return $stddev)
)

# Trigger smart contract when rainfall deviates significantly
(trigger-smart-contract
    (excel-data "rainfall" values $vals)
    (= $stddev (calc-stddev (excel-data "rainfall" values $vals)))
    (if (> $stddev 15)                             # Threshold for anomaly
        (return "Smart Contract Triggered: Insurance payout released")
        (return "No Trigger: Conditions normal")
    )
)

## Contents of Github
In the Github section links for the python code of the use of watsonx.ai has been placed.
In the docs section powerpoint of the presentation used in the video has been placed.
An excel sheets highlighting contents of the Environmental Intelligence Suite has also been placed.






### Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

### Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

### Authors

<a 
</a>

- **John Maina** - _Initial work_ - 

### License

This project is licensed under the Apache 2 License - see the [LICENSE](LICENSE) file for details.


