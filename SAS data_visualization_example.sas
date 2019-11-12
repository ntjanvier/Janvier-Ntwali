
/*Example of a Boxplot in black and white colour solid lines Legend markers*/
ods listing style=journal2;
ods graphics / reset width=5in height=3in imagename='Box_Legend';
title 'Distributiion of Cholesterol by Death Cause and Sex';
proc sgplot data=sashelp.heart nowall noborder;
  vbox cholesterol / category=Weight_Status group=sex clusterwidth=0.5
       meanattrs=(size=7) lineattrs=(pattern=solid) whiskerattrs=(pattern=solid)GROUPORDER=ascending;
  xaxis display=(noline nolabel noticks);
  yaxis display=(noline noticks) grid;
  keylegend / type=marker;
run;
