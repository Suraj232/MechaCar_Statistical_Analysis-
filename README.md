# MechaCar_Statistical_Analysis
Statistical Analysis of automobile using R.

# Overview
MechaCar is having some trouble with production and main idea is to provide some insights by doing analytics. The steps taken to do the analysis os listed below:
- Perform linear regression on MechaCar data.
- Get overall summary data on PSI of suspension coil.
- Get the statistical data as per the Lot.
- Perform t test to find out if we have any defective lot to be checked on.

# Results
### Linear regression to analyze MPG

<img width="477" alt="linear" src="https://user-images.githubusercontent.com/110261837/206791132-78a671b4-adc7-4ba6-b685-d8170486f06b.png">

- The vehicle length and ground clearence in the dataset shows non-random effect on the MPG. The p-values for vehicle length is 2.6x10^-12 and for ground clearence is 5.21x10^-8.
- The null hypothesis has to be rejected because the p-value stands at 5.35x10^-11 which is lower than the expected level. Hence the slope of the linear model is not zero.
- The r-squared value shown in the table is 0.7149 which shows some defect is lying around and overall improvement can be made if needed.

### Summary Statistics
<img width="377" alt="Total_summary" src="https://user-images.githubusercontent.com/110261837/206809351-ad846a5c-15b2-4e3b-832a-ade49209884b.png">
<img width="504" alt="Lot_summary" src="https://user-images.githubusercontent.com/110261837/206809366-10105afd-c093-4885-97ee-a739f6bfd01c.png">

- In overall statistics the variance shown is 62.29 which stays with in the specification required. But when the analysis is done on the individual Lot, third Lot shows variance well above the threshold which is 170.286

### T-Test 
<img width="531" alt="Lot1" src="https://user-images.githubusercontent.com/110261837/206809782-ed11c2d0-37fd-493f-a2b9-808f77dddc6a.png">

- The statistical data for Lot 1 is quite similar to the mean population and its p-value is standing at 1, so null hypothesis cannot be rejected.

<img width="544" alt="Lot2" src="https://user-images.githubusercontent.com/110261837/206810469-2419e8f6-97e1-43ff-92bc-7a12ce4cefbb.png">

- The statistical data for Lot 2 is quite similar to the mean population and its p-value shown is 0.6072 which is not eligible to reject the null hypothesis.

<img width="469" alt="Lot3" src="https://user-images.githubusercontent.com/110261837/206810645-cc0e6631-5b4c-4019-815d-6c2e657b6c0c.png">

- The mean population for Lot 3 is slightly different from the mean population and the p-value is showing very low at 0.04168. This p-value is good enough to reject the null hypothesis. 

# Study Design: MechaCar vs Competition
Before buying a car, a customer would consider several factors. For some customer it might be the fuel economy or more in terms of reliabiltiy and for some customers it might be more asthetics or luxury. 

### Metric to test

To have a steady test, we need to evaluate MechaCar's capacity, in cubic inches as compared to the competitors.

### Null and Alternate Hypothesis

Null Hypothesis: The average carrying capacity for MechaCar is similar to the competitors.
Alternate Hypothesis: The average carrying capacity for MechaCar is above than that of competitors vehicles.

### Statistical Test Used

Two sample t-test is the correct statistical test

### What data is needed

We need to have competitor vehicles data as well as the carrying compartment space data from all the building prototypes.


