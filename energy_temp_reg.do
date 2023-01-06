clear all

cd "C:\Users\jbezo\OneDrive - University of Bristol\Third Year\Data Science\Week1"

* see colab notebook titled "Colab notebook Charts 2&3" for details on sourcing this data set
import delimited "energy_efficiency_temp.csv"


* Pooled OLS (panel data full sample), average low 
eststo : quietly regress heat_energy_co low gdp dwel_area

esttab, t r2 star(* 0.1 ** 0.05 *** 0.01)

esttab using "C:\Users\jbezo\OneDrive - University of Bristol\Third Year\Data Science\energy_temp_reg_result.csv", t r2 star(* 0.1 ** 0.05 *** 0.01) replace
