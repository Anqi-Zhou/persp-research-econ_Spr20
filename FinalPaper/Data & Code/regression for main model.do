import excel "C:\Users\ZWY\Downloads\main model data (4).xlsx", sheet("main model data") firstrow clear
encode countryname, gen(country_name)
xtset country_name year
xtreg gdppercapita economicfreedomindex L.economicfreedomindex investmentgdp governmentexpenditure tradeshare yearsofschooling Lifeexpectancyatbirth mortalityrate populationgrowth inflationrate ,fe
