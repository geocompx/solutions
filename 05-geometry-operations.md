# Geometry operations {#geometric-operations}




Some of the exercises use a vector (`random_points`) and raster dataset (`ndvi`) from the **RQGIS** package.
They also use a polygonal 'convex hull' derived from the vector dataset (`ch`) to represent the area of interest:

```r
# library(RQGIS)
# data(random_points)
# data(ndvi)
# ch = st_combine(random_points) %>% 
#   st_convex_hull()
```
1. Generate and plot simplified versions of the `nz` dataset.
Experiment with different values of `keep` (ranging from 0.5 to 0.00005) for `ms_simplify()` and `dTolerance` (from 100 to 100,000) `st_simplify()` .
    - At what value does the form of the result start to break down for each method, making New Zealand unrecognizable?
    - Advanced: What is different about the geometry type of the results from `st_simplify()` compared with the geometry type of `ms_simplify()`? What problems does this create and how can this be resolved?

1. In the first exercise in Chapter \@ref(spatial-operations) it was established that Canterbury region had 70 of the 101 highest points in New Zealand. 
Using `st_buffer()`, how many points in `nz_height` are within 100 km of Canterbury?

1. Find the geographic centroid of New Zealand. 
How far is it from the geographic centroid of Canterbury?

1. Most world maps have a north-up orientation.
A world map with a south-up orientation could be created by a reflection (one of the affine transformations not mentioned in Section \@ref(affine-transformations)) of the `world` object's geometry.
Write code to do so.
Hint: you need to use a two-element vector for this transformation.
    - Bonus: create an upside-down map of your country.

1. Subset the point in `p` that is contained within `x` *and* `y` (see Section \@ref(clipping) and Figure \@ref(fig:venn-clip)).
    - Using base subsetting operators.
    - Using an intermediary object created with `st_intersection()`\index{vector!intersection}.

1. Calculate the length of the boundary lines of US states in meters.
Which state has the longest border and which has the shortest?
Hint: The `st_length` function computes the length of a `LINESTRING` or `MULTILINESTRING` geometry.

1. Crop the `ndvi` raster using (1) the `random_points` dataset and (2) the `ch` dataset.
Are there any differences in the output maps?
Next, mask `ndvi` using these two datasets.
Can you see any difference now?
How can you explain that?

1. Firstly, extract values from `ndvi` at the points represented in `random_points`.
Next, extract average values of `ndvi` using a 90 buffer around each point from `random_points` and compare these two sets of values. 
When would extracting values by buffers be more suitable than by points alone?

1. Subset points higher than 3100 meters in New Zealand (the `nz_height` object) and create a template raster with a resolution of 3 km. 
Using these objects:
    - Count numbers of the highest points in each grid cell.
    - Find the maximum elevation in each grid cell.

1. Aggregate the raster counting high points in New Zealand (created in the previous exercise), reduce its geographic resolution by half (so cells are 6 by 6 km) and plot the result.
    - Resample the lower resolution raster back to a resolution of 3 km. How have the results changed?
    - Name two advantages and disadvantages of reducing raster resolution.

1. Polygonize the `grain` dataset and filter all squares representing clay.
    - Name two advantages and disadvantages of vector data over raster data.
    -  At which points would it be useful to convert rasters to vectors in your work?
