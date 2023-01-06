clear all

cd "C:\Users\jbezo\OneDrive - University of Bristol\Third Year\Data Science"

* see colab notebook title "Colab Notebook (Chart 7)" for details on sourcing this data set
import delimited "interest_price_reg.csv"


foreach i in "insulation" "efficient heater" "efficient boiler"  "energy efficient"  "double glazing"  "triple glazing"  "secondary glazing"{
	eststo: quietly regress interest price i.month if search_term == "`i'"
}



esttab, mtitle("insulation" "efficient heater" "efficient boiler"  "energy efficient"  "double glazing"  "triple glazing"  "secondary glazing") t r2 star(* 0.1 ** 0.05 *** 0.01)