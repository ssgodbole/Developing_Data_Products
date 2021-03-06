---
title       : FEMA declared disasters by Year and State
subtitle    : Developing Data Products Project
author      : Sneha Godbole
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

1. Project for Developing Data Products course
2. Data Source - Federal Emergency Management Agency (FEMA) decalred disasters
3. Reactive Shiny App at https://snehagodbole.shinyapps.io/Developing_Data_Products/

---

## Data description

1. Every year FEMA declares a list of disasters throughout the United States
2. Data includes date of disaster, affected States, and details of the disaster
3. Each year's data is in a separate spreadsheet which had to be consolidated into a single sheet for this Shiny App

---

## Shiny App description

1. The Shiny App shows the Year slider on the left panel. This slider can be played and paused.
2. A geographical map below the Year slider animates as per the selected Year.
3. The table on the right panel displays the details of all disasters for each Year and updates as well.

---

## Conclusion

1. Other data can be used with the FEMA data to show correlation - for example claims data, estimate value, casualties, etc.
2. The purpose of this Shiny App is only to display the use of reactive code.




