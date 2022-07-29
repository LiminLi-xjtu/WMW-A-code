# WMW-A-code
Code for the paper "A small sample test through auxiliary sample for identifying differentially expressed genes".

# Data
In order to use your own data, you have to provide
    a g by m matrix (g is the number of features and m is the sample size of the case sample),
    a g by n matrix (n is the sample size of the control sample), and
    a g by l matrix (l is the sample size of the auxiliary sample).
Have a look at the generatexy() function in generatexy.R for an example.

# Run from
main.R
