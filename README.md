# stackable [future work]
A simple sinatra server of OS Open Zoomstack for UNVT Portable

# Usage
- `git clone git@gigthub.com:optgeo/stackable`
- `cd stackable`
- download `OS_Open_Zoomstack.mbtiles`
- `rake host`
Then the service will be available on port 8001.

# Structure
```
[mbtiles] -> sinatra server -[proxy_pass]-> nginx -> users
```

# About OS Open Zoomstack
https://osdatahub.os.uk/downloads/open/OpenZoomstack

- Contains OS data © Crown copyright and database right 2021
- Contains Royal Mail data © Royal Mail copyright and Database right 2021
- Contains National Statistics data © Crown copyright and database right 2021
