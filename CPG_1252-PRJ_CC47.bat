REM Use for Shapefile without cpg file specifying encoding
REM run in a folder to create a CPG file with 1252 inside

for %%f in ("*.dbf") do echo 1252>"%%~nf.cpg"
for %%f in ("*.shp") do echo PROJCS["RGF_1993_CC47",GEOGCS["GCS_RGF_1993",DATUM["D_RGF_1993",SPHEROID["GRS_1980",6378137.0,298.257222101]],PRIMEM["Greenwich",0.0],UNIT["Degree",0.0174532925199433]],PROJECTION["Lambert_Conformal_Conic"],PARAMETER["False_Easting",1700000.0],PARAMETER["False_Northing",6200000.0],PARAMETER["Central_Meridian",3.0],PARAMETER["Standard_Parallel_1",46.25],PARAMETER["Standard_Parallel_2",47.75],PARAMETER["Latitude_Of_Origin",47.0],UNIT["Meter",1.0]]>"%%~nf.prj"


