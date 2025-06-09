** D'Agostini M, Collatuzzo G, Teglia F, Boffetta P. 
** Risk of Skin Cancer in Workers Exposed to Diesel Exhaust: A Systematic Review and Meta-Analysis of Cohort Studies. 
** Med Lav [Internet]. 2024 Apr. 24 [cited 2025 Jun. 9];115(2):e2024010. 
** Available from: https://mail.mattioli1885journals.com/index.php/lamedicinadellavoro/article/view/15569

use "DIESEL DB EC+GC EDITED_singleAttfield(use)_SKIN_CANCER.dta"

* ==================
* COMBINED ANALYSIS
* ==================

** Random Effect Model
meta set lnrr selnrr if repeat_0==0 & main_analysis==1 & (Typeofcancer == 16 | Typeofcancer == 17 | Typeofcancer == 18), random(sj) studylabel(authors)
meta summarize, transform(`"ES"': exp) subgroup(typeofcancer_label)

meta forestplot,  transform(`"RR"': exp) subgroup(typeofcancer_label) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
graph export "skin_cancer_by_type_forestplot.tif", as(tif) name("Graph")

meta bias, egger
meta funnelplot
graph export "skin_cancer_funnelplot.tif", as(tif) name("Graph")

* Stratification by outcome 
meta summarize, transform(`"ES"': exp) subgroup( OUTCOME1incidenza2mortalit )

* Stratification by sex
meta summarize, subgroup(sex) transform(`"ES"': exp)

* Stratification by geographic area
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by industry code
meta summarize, subgroup(industry_code) transform(`"ES"': exp)

* Stratification by casp
meta summarize, subgroup(casp_dic) transform(`"ES"': exp)

* ==================
* MELANOMA
* ==================

meta set lnrr selnrr if repeat_0==0 & main_analysis==1 & (Typeofcancer == 16), random(sj) studylabel(authors)
meta summarize, transform(`"ES"': exp)
meta forestplot,  transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
meta forestplot,  leaveoneout transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
graph export "skin_cancer_melanoma_forestplot.tif", as(tif) name("Graph")
meta bias, egger
meta funnelplot
graph export "skin_cancer_melanoma_funnelplot.tif", as(tif) name("Graph")
meta galbraithplot

* Stratification by outcome 
meta summarize, transform(`"ES"': exp) subgroup( OUTCOME1incidenza2mortalit )

* Stratification by sex
meta summarize, subgroup(sex) transform(`"ES"': exp)

* Stratification by geographic area
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by industry code
meta summarize, subgroup(industry_code) transform(`"ES"': exp)

* Stratification by casp
meta summarize, subgroup(casp_dic) transform(`"ES"': exp)


* ===========================
* SKIN CANCER (NON MELANOMA)
* ===========================

meta set lnrr selnrr if repeat_0==0 & main_analysis==1 & (Typeofcancer == 17), random(sj) studylabel(authors)
meta summarize, transform(`"ES"': exp)
meta forestplot,  transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
meta forestplot,  leaveoneout transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
graph export "skin_cancer_non_melanoma_forestplot.tif", as(tif) name("Graph")
meta bias, egger
meta funnelplot
graph export "skin_cancer_non_melanoma_funnelplot.tif", as(tif) name("Graph")
meta galbraithplot

* Stratification by outcome 
meta summarize, transform(`"ES"': exp) subgroup( OUTCOME1incidenza2mortalit )

* Stratification by sex
meta summarize, subgroup(sex) transform(`"ES"': exp)

* Stratification by geographic area
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by industry code
meta summarize, subgroup(industry_code) transform(`"ES"': exp)

* Stratification by casp
meta summarize, subgroup(casp_dic) transform(`"ES"': exp)

* =============
* SKIN CANCER 
* =============

meta set lnrr selnrr if repeat_0==0 & main_analysis==1 & (Typeofcancer == 18), random(sj) studylabel(authors)
meta summarize, transform(`"ES"': exp)
meta forestplot,  transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
meta forestplot,  leaveoneout transform(`"RR"': exp) nullrefline xscale(range(.5 4)) xlabel(0.25 0.5 2 4, format(%9.2gc)) crop(0.25 4)
graph export "skin_cancer_skin_cancer_forestplot.tif", as(tif) name("Graph")
meta bias, egger
meta funnelplot
graph export "skin_cancer_skincancer_funnelplot.tif", as(tif) name("Graph")
meta galbraithplot

* Stratification by outcome 
meta summarize, transform(`"ES"': exp) subgroup( OUTCOME1incidenza2mortalit )

* Stratification by sex
meta summarize, subgroup(sex) transform(`"ES"': exp)

* Stratification by geographic area
meta summarize, subgroup(geo_area) transform(`"ES"': exp)

* Stratification by industry code
meta summarize, subgroup(industry_code) transform(`"ES"': exp)

* Stratification by casp
meta summarize, subgroup(casp_dic) transform(`"ES"': exp)













