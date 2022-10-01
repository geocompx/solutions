# Bridges to GIS software {#gis}




```
#> Linking to GEOS 3.8.0, GDAL 3.0.4, PROJ 6.3.1; sf_use_s2() is TRUE
#> terra 1.6.17
library(sf)
library(terra)
```

<!-- qgisprocess 1-3 -->
<!-- sagagis 1 -->
<!-- sagagis supercells -->
<!-- expain/mention other segmentation techinques -->
<!-- mention supercells -- exercises?? -->
<!-- https://github.com/joaofgoncalves/SegOptim ?? -->
<!-- rgrass 1 -->
<!-- gdal 1-2 -->
1. Use `gdalinfo` via a system call for a raster\index{raster} file stored on disk of your choice.
What kind of information you can find there?

```r
link2GI::linkGDAL()
#> $path
#> [1] "/usr/bin/"
#> 
#> $bin
#> $bin[[1]]
#>                     gdal_bin
#> 1          /usr/bin/gdaladdo
#> 2      /usr/bin/gdalbuildvrt
#> 3       /usr/bin/gdal-config
#> 4      /usr/bin/gdal_contour
#> 5           /usr/bin/gdaldem
#> 6       /usr/bin/gdalenhance
#> 7         /usr/bin/gdal_grid
#> 8          /usr/bin/gdalinfo
#> 9  /usr/bin/gdallocationinfo
#> 10       /usr/bin/gdalmanage
#> 11   /usr/bin/gdal_rasterize
#> 12       /usr/bin/gdalserver
#> 13      /usr/bin/gdalsrsinfo
#> 14       /usr/bin/gdaltindex
#> 15    /usr/bin/gdaltransform
#> 16   /usr/bin/gdal_translate
#> 17         /usr/bin/gdalwarp
#> 
#> 
#> $py
#> $py[[1]]
#>                        gdal_py
#> 1       /usr/bin/gdal2tiles.py
#> 2         /usr/bin/gdal2xyz.py
#> 3        /usr/bin/gdal_auth.py
#> 4        /usr/bin/gdal_calc.py
#> 5       /usr/bin/gdalchksum.py
#> 6      /usr/bin/gdalcompare.py
#> 7        /usr/bin/gdal_edit.py
#> 8  /usr/bin/gdal_fillnodata.py
#> 9        /usr/bin/gdalident.py
#> 10      /usr/bin/gdalimport.py
#> 11      /usr/bin/gdal_merge.py
#> 12        /usr/bin/gdalmove.py
#> 13 /usr/bin/gdal_pansharpen.py
#> 14 /usr/bin/gdal_polygonize.py
#> 15  /usr/bin/gdal_proximity.py
#> 16     /usr/bin/gdal_retile.py
#> 17      /usr/bin/gdal_sieve.py
#> 
#> 
#> $exist
#> [1] TRUE
our_filepath = system.file("raster/elev.tif", package = "spData")
cmd = paste("gdalinfo", our_filepath)
system(cmd)
# Driver, file path, dimensions, CRS, resolution, bounding box, summary statistics
```

1. Use `gdalwarp` to decrease the resolution of your raster file (for example, if the resolution is 0.5, change it into 1). Note: `-tr` and `-r` flags will be used in this exercise.

```r
our_filepath = system.file("raster/elev.tif", package = "spData")
cmd2 = paste("gdalwarp", our_filepath, "new_elev.tif", "-tr 1 1", "-r bilinear")
system(cmd2)
```


<!-- postgis 1? -->
<!-- stac+gdalcubes 1 -->

<!-- 1. Create two overlapping polygons (`poly_1` and `poly_2`) with the help of the **sf**-package (see Chapter \@ref(spatial-class)).  -->

<!-- 1. Union `poly_1` and `poly_2` using `st_union()` and `qgis:union`. -->
<!-- What is the difference between the two union operations\index{vector!union}?  -->
<!-- How can we use the **sf**\index{sf} package to obtain the same result as QGIS\index{QGIS}? -->

<!-- 1. Calculate the intersection\index{vector!intersection} of `poly_1` and `poly_2` using: -->

<!--     - **RQGIS**, **RSAGA** and **rgrass** -->
<!--     - **sf** -->

<!-- 1. Attach `data(dem, package = "spDataLarge")` and `data(random_points, package = "spDataLarge")`. -->
<!-- Select randomly a point from `random_points` and find all `dem` pixels that can be seen from this point (hint: viewshed\index{viewshed}). -->
<!-- Visualize your result. -->
<!-- For example, plot a hillshade\index{hillshade}, and on top of it the digital elevation model\index{digital elevation model}, your viewshed\index{viewshed} output and the point. -->
<!-- Additionally, give `mapview` a try. -->

<!-- 1. Compute catchment area\index{catchment area} and catchment slope of `data("dem", package = "spDataLarge")` using **RSAGA** (see Section \@ref(saga)). -->



<!-- 1. Query all Californian highways from the PostgreSQL/PostGIS\index{PostGIS} database living in the QGIS\index{QGIS} Cloud introduced in this chapter (see Section \@ref(postgis)). -->
