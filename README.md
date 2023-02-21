# Pewlett-Hackard-Analysis

## Overview of Pewlett-Hackard Analysis

#### The purpose of this analysis was to utilize my newly acquired SQL skills, doing so by simulating the analysis of employee data for a company called "Pewlett-Hackard". Visual Studio Code and pgAdmin 4 were used in tandem to create a myriad of readable CSV tables of the data, such as current employees, employees near retirement, employees sorted by their departments, and etc. The purpose of the challenge was to create tables that specifically determined the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program as they reach retirement age.

## Results

- In whole, there is a large amount of employees nearing retirement, 72,458 when counted from the retiring_titles table.

![Retirees](https://i.gyazo.com/65ec8c8476c2a415e56c9efbcd1bc6a6.png)

- While there is a lot of upcoming retirees, only 2 are managers, so the pool for managers will not be impacted much.

- Inversely, there are plenty of retirees holding other titles in the company, resulting in a very large amount of other departments that will lose seasoned and experienced employees.

- The amount of upcoming retirees means that there is a very large amount of employees eligible for the mentorship program which can help the company transition into newer workers to soften the blow of the "silver tsunami". 

## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
![Retirees2](https://i.gyazo.com/5c2bca8bf5a6fc61f664863f2d0e0f22.png)
![Retirees3](https://i.gyazo.com/5dfd6324a7bde33addc1b2b37e84e18b.png)
- As referenced earlier, 72,458 roles will need to be filled. This is determined by performing the SUM function on the "count" column of the retiring_titles table.


### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
![Retirees4](https://i.gyazo.com/70240cf6722fc44ea0f160525b69ecba.png)
![Retirees5](https://i.gyazo.com/e4ec1e5e03d1a7bf567199c842ced439.png)

-Using the COUNT function on the amount of employee numbers in the mentorship_eligibility table, it is determined that there are 1,549 employees eligible. In whole, this is a large pool of employees that can mentor new hires. 

![Retirees6](https://i.gyazo.com/c822a313aeaedb474fe5a0a802976831.png)
![Retirees7](https://i.gyazo.com/de84b0656111f7a44e89a288e84f1267.png)

-Using the schema above, it is possible to find the amount of retirement-ready employees by title. There is a large amount spread across each department (even though technique leaders and assistant engineers are comparably lower), but no managers eligible for the mentorship program.
