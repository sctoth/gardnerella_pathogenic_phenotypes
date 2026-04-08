# Formatted Phenotype Data
Formatted phenotype data for growth rate, biofilm formation, and growth at varying pH. Files contains the mean and standard deviations of phenotype measurement values for the technical replicates of each biological replicate of each strain and blanks have been subtracted from OD<sub>600</sub> values where applicable. 

* growth_rate.csv: exponential growth rate calculated in ./growth_curves/growth_curves.Rmd:
    - Sample: Each sample represents a biological replicate (one inoculum) used to seed experiments
    - Strain: Strain/isolate name
    - Species: *Gardnerella* species of strain/isolate
    - mSlope: Mean exponential growth rate for each sample. Technical replicates (wells of 96 well plate seeded with the same inoculum) were averaged.
    - sdSlope: Standard deviation of the growth rate for each sample
* carrying_capacticy.csv: carrying capacity calculated in ./growth_curves/growth_curves.Rmd:
    - Sample: Each sample represents a biological replicate (one inoculum) used to seed experiments
    - Strain: Strain/isolate name
    - Species: *Gardnerella* species of strain/isolate
    - maxOD: Mean carrying capacity (maximum OD<sub>600</sub>) rate for each sample
    - maxODsd: Standard deviation of the carrying capacity for each sample
* percent_biofilm_od.csv: percent of growth as biofilm calculated in ./biofilm/biofilm_formation.Rmd:
    - Sample: Each sample represents a biological replicate (one inoculum) used to seed experiments
    - Strain: Strain/isolate name
    - Species: *Gardnerella* species of strain/isolate
    - mPercentOD: Mean percent growth as biofilm for each sample. $Percent OD = OD_{600-biofilm}/(OD_{600-biofilm}+OD_{600-planktonic})$
    - sdPercentOD: Standard deviation of the percent growth as biofilm for each sample for sample
* biofilm_and_planktonic_od.csv: biofilm and planktonic ODs as calculated in ./biofilm/biofilm_formation.Rmd
    - Sample: Each sample represents a biological replicate (one inoculum) used to seed experiments
    - Strain: Strain/isolate name
    - Species: *Gardnerella* species of strain/isolate
    - mBiofilmOD: Mean OD<sub>600</sub> of biofilm growth for each sample
    - sdBiofilmOD: Standard deviation of OD<sub>600</sub> of biofilm growth for each sample
    - mPlanktonicOD: Mean OD<sub>600</sub> of planktonic growth for each sample
    - sdPlanktonicOD: Standard deviation of OD<sub>600</sub> of planktonic growth for each sample
* safranin_od.csv: biofilm growth measured by optical density of safranin-stained biofilms calculated in ./biofilm/biofilm_formation.Rmd
    - Sample: Each sample represents a biological replicate (one inoculum) used to seed experiments
    - Strain: Strain/isolate name
    - Species: *Gardnerella* species of strain/isolate
    - mSafOD: Mean OD<sub>600</sub> of safranin stained biofilm for each sample
    - sdSafOD: Standard deviation of safranin stained biofilm for each sample
* pH_growth.csv: optical densities of strain growth at pH ranging from 3.5 to 7 calculated in ./pH_growth/pH_growth.Rmd
    - Sample: Each sample represents a biological replicate (one inoculum) used to seed experiments at each pH
    - Strain: Strain/isolate name
    - Species: *Gardnerella* species of strain/isolate
    - pH: pH of media, adjusted by adding lactic acid
    - mOD: Mean OD<sub>600</sub> for each sample at each pH
    - sdOD: Standard deviation of OD<sub>600</sub> for each sample at each pH
* metro_mic.csv: Metronidazole minimum inhibitory concentrations (MICs) formatted in ./metronidazole_mic/metro_mics.Rmd
    - Sample: Each sample represents a petri dish seeded with a *Gardnerella* strain and a metronidazole MIC strip added
    - Strain: Strain/isolate name
    - Species: *Gardnerella* species of strain/isolate
    - MIC: Observed minimum inhibitory concentration of metronidazole
    - Notes: Any relevant notes related to growth, inhibition, or ability to read MIC