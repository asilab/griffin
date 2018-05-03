#!/bin/bash
# 
# RUN COMPRESSION ===============================================================================
#
shopt -s globstar
#echo "COMPLEXITY RESULTS:" > REPORT_COMPLEXITY;
rm -f REPORT_COMPLEXITY;
for x in **/*.jpg;
  do
  echo "Running $x ...";
  ./paq8kx_v7.exe -8 $x
  original=`ls -la $x | awk '{ print $5;}'`;
  compressed=`ls -la $x.paq8kx | awk '{ print $5;}'`;
  entropy=`echo "scale=6; $compressed / $original" | bc -l | awk '{printf "%f", $0}'`;
  echo "$x: $entropy" >> REPORT_COMPLEXITY;
  done
#
# ===============================================================================================

