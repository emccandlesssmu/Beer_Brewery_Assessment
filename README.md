# JKEM Market Research
### Beer and Brewery Analysis
#### Prepared for: Beers, Inc.
#### Prepared by: Eric McCandless, Jordan Kassof  

***

This repository contains all analysis related to JKEM's reseaerch for Beers, Inc.  

#### Repository Structure  

- Report is contained in main project directory
    - Report is saved in 3 formats, Rmarkdown, markdown, and HTML
- All R scripts for analysis are contained in analysis directory
- All data files required for analysis contained in data directory
- Image files that go into HTML report saved in Beer_Brewery_Assesment_files directory

#### Commentary on viewing report

- This report uses several R packages, the code to install these packages is commented out
- Click link at bottom of readme to view HTML report

***

### Codebook for data files

#### Field specifications for Beers.csv
- Name (factor): Name of beer
- Beer_ID (integer): ID number for beer
- ABV (numeric): Alcohol content by volume
- IBU (numeric): Bitterness score, bitter units
- Brewery_id (integer): Unique ID of brewery
- Style (factor): Style of beer
- Ounces (numeric): Ounces of beer in container

#### Field specifications for Breweries.csv
- Brew_ID (int): Unique ID of brewery
- Name (factor): Name of brewery
- City (factor): City where brewery is located
- State (factor): State where brewery is located

#### Comment on merging files
- The brewery unique ID column has a different name in the two datasets so that needs to be considered when merging the two datasets

***

#### Contact

If there are any questions about the content of this analysis, please contact [Eric McCandless](mailto:emccandless@smu.edu) or [Jordan Kassof](jkassof@smu.edu).

## [Click Here to view fully rendered HTML report](http://htmlpreview.github.io/?https://github.com/emccandlesssmu/Beer_Brewery_Assessment/blob/master/Beer_Brewery_Assessment.html)
