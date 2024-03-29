Fujita_2010
===========

Model by Fujita et al 2010 as one of the proposed benchmark models provided by Hass et al. 2019. The model represents epidermal growth factor (EGF)-dependent Akt pathway. Data from [Fig. 1b] with a corresponding EGF step input from [Fig. 1a] in Fujita et al. 2010 was used for estimation and Global Sensitity Analysis of 12 parameters. We performed parameter estimation starting from the model parameters provided in the publication, using a search space 5 order of magnitude above and below for each parameter.


# Reactions chosen for Parameter Estimation and Global Sensitivity Analysis

* EGFR + EGF <=> EGF_EGFR
* pEGFR + Akt <=> pEGFR_Akt
* pEGFR_Akt -> pEGFR + pAkt
* pEGFR -> null
* pAkt + S6 <=> pAkt_S6
* pAkt_S6 -> pAkt + pS6
* pAkt -> Akt
* pS6 -> S6
* EGF_EGFR -> pEGFR
* EGFR -> null 

# Tools for building and analyzing the model

We have developed some custom tools for model development and analysis. These tools and a fuller explanation of their capabilities can be found in this repository:
 
 https://github.com/jpgsantos/Subcellular_workflow 

# References

[Fujita, K. A., Toyoshima, Y., Uda, S., Ozaki, Y., Kubota, H., & Kuroda, S. (2010). Decoupling of receptor and downstream signals in the Akt pathway by its low-pass filter characteristics. Science signaling, 3(132).](https://doi.org/10.1126/scisignal.2000810)

[Hass, H., Loos, C., Raimndez-Alvarez, E., Timmer, J., Hasenauer, J., Kreutz, C. (2019). Benchmark problems for dynamic modeling of intracellular processes. Bioinformatics. 35:3073–3082.](https://doi.org/10.1093/bioinformatics/btz020)
