3dcalc \
-a pMTG.nii \
-b lAG.nii \
-expr 'step(a+b)' \
-datum byte -nscale \
-prefix ROI_pMTG_AG_union.nii.gz 
