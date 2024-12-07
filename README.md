# Climbing Cam Preferences Survey

This repository contains the code and resources to create a **Discrete Choice Experiment (DCE)** for understanding preferences regarding climbing camming devices. The experiment is implemented using the **`surveydown`** package, and it collects data on key attributes: **Price**, **Brand**, **Condition**, and **Delivery Time**.

---

## **Table of Contents**
- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Dependencies](#dependencies)
- [Acknowledgments](#acknowledgments)

---

## **Overview**
The survey is designed to explore climbers' preferences for camming devices, focusing on trade-offs between:
- **Price**: Cost of the device.
- **Brand**: Manufacturer of the device.
- **Condition**: New or used.
- **Delivery Time**: Time required for delivery.

Participants complete a series of choice tasks where they select their preferred option from two or more alternatives.

---

## **Features**
- **Dynamic survey generation** using Quarto and R.
- Customizable DCE design to adjust the attributes and levels.
- Hosted survey using **ShinyApps.io** for easy deployment.
- Data collection saved in `.csv` format for analysis.

---

## **Project Structure**
. ├── app.R # Shiny app script to run the survey ├── data.csv # Placeholder for collected survey data ├── survey.qmd # Quarto markdown file for generating the survey ├── survey.html # Generated HTML survey ├── code/
│ └── make_choice_questions.R # Script to generate choice questions ├── data/
│ └── choice_questions.csv # Generated choice tasks for the survey ├── images/ # Images used in the survey │ ├── bd-cam.jpg │ ├── dragon.jpg │ ├── totem.jpg │ └── wc-friend.jpg ├── rsconnect/ # ShinyApps.io deployment configuration │ └── shinyapps.io/choices/ │ └── dce-cams.dcf # Deployment settings └── survey_files/ # Supporting files for the survey └── libs/ # Library files for Quarto and survey styling


---

## **Usage**

### **1. Set Up the Survey**
1. Clone this repository:
   ```bash
   git clone https://github.com/your-repo/climbing-cam-survey.git
   cd climbing-cam-survey
   ```
Install necessary dependencies (see Dependencies).

2. Generate Choice Questions
Run the script to generate choice tasks:

```r
source("code/make_choice_questions.R")
```

3. Deploy the Survey
To preview locally, run:
```r
shiny::runApp("app.R")
```
To deploy online, use the settings in rsconnect/shinyapps.io.

4. Collect and Save Data
Collected responses are stored in data.csv in the root directory.

## Dependencies:
R 4.3+
R Packages:
surveydown
shiny
quarto
dplyr
tidyr
Install these packages in R:

R
Copy code
install.packages(c("surveydown", "shiny", "dplyr", "tidyr"))
Acknowledgments
This project is built using:

The surveydown package for survey creation.
Quarto for generating dynamic documents.
Shiny for deploying interactive web apps.
For questions or contributions, feel free to open an issue or submit a pull request.
