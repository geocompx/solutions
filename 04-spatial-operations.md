# Spatial data operations {#spatial-operations}




1. It was established in Section \@ref(spatial-vec) that Canterbury was the region of New Zealand containing most of the 100 highest points in the country.
How many of these high points does the Canterbury region contain?

1. Which region has the second highest number of `nz_height` points in, and how many does it have?

1. Generalizing the question to all regions: how many of New Zealand's 16 regions contain points which belong to the top 100 highest points in the country? Which regions?
    - Bonus: create a table listing these regions in order of the number of points and their name.

1. Use `data(dem, package = "spDataLarge")`, and reclassify the elevation in three classes: low, medium and high.
Secondly, attach the NDVI raster (`data(ndvi, package = "spDataLarge")`) and compute the mean NDVI and the mean elevation for each altitudinal class.
1. Apply a line detection filter to `raster(system.file("external/rlogo.grd", package = "raster"))`.
Plot the result.
Hint: Read `?raster::focal()`.
1. Calculate the NDVI of a Landsat image. 
Use the Landsat image provided by the **spDataLarge** package (`system.file("raster/landsat.tif", package="spDataLarge")`).
1. A StackOverflow [post](https://stackoverflow.com/questions/35555709/global-raster-of-geographic-distances) shows how to compute distances to the nearest coastline using `raster::distance()`.
Retrieve a digital elevation model of Spain, and compute a raster which represents distances to the coast across the country (hint: use `getData()`).
Second, use a simple approach to weight the distance raster with elevation (other weighting approaches are possible, include flow direction and steepness); every 100 altitudinal meters should increase the distance to the coast by 10 km.
Finally, compute the difference between the raster using the Euclidean distance and the raster weighted by elevation.
Note: it may be wise to increase the cell size of the input raster to reduce compute time during this operation.