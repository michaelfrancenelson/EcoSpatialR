

# ---- packages ----


require(raster)
require(sp)
require(sf)
require(stars)
require(spData)





# ---- albers_projection_parameterize ----

# https://proj.org/operations/projections/aea.html
# https://www.bluemarblegeo.com/knowledgebase/GeoCalcPBW/Content/ClassDef/Projection/Projections/AlbersEqualArea.html
# 
# 
usgs_aea_proj4 = "+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=37.5 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"


# required parameters:
# First standard parallel.
# +lat_1=<value>
# Defaults to 0.0.


# Second standard parallel.
# +lat_2=<value>
# Defaults to 0.0.

# Optional parameters
# Longitude of projection center.
# +lon_0=<value>
# Defaults to 0.0.

# Ellipsoid
# See proj -le for a list of available ellipsoids.
# +ellps=<value>
# Defaults to “GRS80”.

# Radius of the sphere given in meters. If used in conjunction with +ellps +R takes precedence.
# +R=<value>

# False easting.
# +x_0=<value>
# Defaults to 0.0.

# False northing.
# +y_0=<value>
# Defaults to 0.0.
mass_aea_proj4 = 


# ---- build_data ----

mass_proj = "+proj=lcc +lat_1=42.68333333333333 +lat_2=41.71666666666667 +lat_0=41 +lon_0=-71.5 +x_0=200000.0001016002 +y_0=750000 +ellps=GRS80 +datum=NAD83 +to_meter=0.3048006096012192 +no_defs"

nrow = 100
ncol = 110






# make some noisy gradient data
m = matrix(data = 0, nrow = nrow, ncol = ncol)

lambda = 56.7

for (i in 1:nrow) for (j in 1:nrow)
{
  m[i, j] = i + j + rpois(1, lambda)
}

head(us_states)



subset(us_states, NAME == "Massachusetts")



image(m)

