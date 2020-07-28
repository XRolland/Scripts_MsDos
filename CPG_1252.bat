REM Use for Shapefile without cpg file specifying encoding
REM run in a folder to create a CPG file with 1252 inside

for %%f in ("*.dbf") do echo 1252>"%%~nf.cpg"


