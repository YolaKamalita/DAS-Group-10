# Analysis of IMDB Rating with GLM - Logistic Regression
---

In this analysis, the research question is to investigate which properties of films influence whether IMDB rating exceeding 7 or not. The Generalized Linear Model for binary response variables, Logistic Regression, will be used to investigate the relationship between binary rating (i.e., 1 if greater than 7 and 0 otherwise) and film properties.


## Installation and Setup
---

R and quarto installation is required as the main tools for doing the statistical analysis and reporting. Here is the list of R packages which are needed to be installed in order to run the main .qmd file in the local machine:
```
install.packages(tidyverse)
install.packages(gt)
install.packages(skimr)
install.packages(knitr)
install.packages(corrplot)
install.packages(ggplot2)
install.packages(gridExtra)
install.packages(dplyr)
install.packages(stats)
install.packages(jtools)
install.packages(sjPlot)
install.packages(broom)
install.packages(huxtable)
install.packages(lmtest)
install.packages(zoo)
```


## Data
---

IMDB rating dataset which is preprocessed by Data Analytics (Statistics) department from University of Glasgow as the playground dataset for learning purposes.

| Film ID | Year | Length | Budget | Votes | Genre   | Rating |
|---------|------|--------|--------|-------|---------|--------|
| 49834   | 1963 | 107    | 11.4   | 225   | Romance | 3.1    |

Description:
- Film ID: The unique identifier for the film.
- Year: Year of release of the film in cinemas.
- Length: Duration (in minutes).
- Budget: Budget for the films production (in $1000000).
- Votes: Number of positive votes received by viewers.
- Genre: Genre of the film.
- Rating: IMDB rating from 0-10.


## Code structure
---

```
/DAS-Group-10
├── README.md
├── data/
│   └──dataset10.csv
├── pdf/
│   ├── Group_10_Presentation.pdf
│   ├── Group_10_qmd.pdf
│   └── raw/Group_10_Presentation.pptx
└── quarto/
    ├── R
    └── Group_10_Analysis.qmd
```


## Results
---

In summary, budget and length have significant relationship to binary rating, whether greater than 7 or not. For Genre, two of them are not statistically significant: Animation and Romance.

Model selection steps
- Hypothesis testing on the estimated coefficients using P-value and CIs.
- Model comparison using AIC and BIC as the criteria.
- Goodness of fit using Hosmer-Lemeshow test.


# Future Work
---

Future studies should consider interaction terms between movie length and genre which provide insights into the nuanced effects these variables have on ratings.
