# stackable [future work]
A simple sinatra server of OS Open Zoomstack for UNVT Portable

![social preview image](https://repository-images.githubusercontent.com/441779395/05ecbfce-ab3f-41f7-b6c8-7fed3b62a3eb)

# Usage
- `git clone git@gigthub.com:optgeo/stackable`
- `cd stackable`
- download `OS_Open_Zoomstack.mbtiles`
- `rake host`
Then the service will be available on port 8001.

# Required gems
- sqlite3
- sinatra
- sinatra-cors

# Structure
```
[mbtiles] -> sinatra server -[proxy_pass]-> nginx -> users
```

# About style.yml
style.yml is converted from https://github.com/OrdnanceSurvey/OS-Open-Zoomstack-Stylesheets/blob/master/Vector%20Tiles/Mapbox%20GL%20Styles/OS%20Open%20Zoomstack%20-%20Road.json and then edited. 

Contains public sector information licensed under the Open Government Licence v3.0.

# About the sprites
sprites are from https://github.com/OrdnanceSurvey/OS-Open-Zoomstack-Stylesheets/tree/master/Vector%20Tiles/Mapbox%20GL%20Styles/sprites.

Contains public sector information licensed under the Open Government Licence v3.0.
 
# About OS Open Zoomstack
https://osdatahub.os.uk/downloads/open/OpenZoomstack

- Contains OS data © Crown copyright and database right 2021
- Contains Royal Mail data © Royal Mail copyright and Database right 2021
- Contains National Statistics data © Crown copyright and database right 2021

## Output of `vt-optimizer` for OS Open Zoomstack (part)

```
Center:  -3.2835,58.6359,10
Layers: 

• airports
• boundaries
• buildings
• contours
• etl
• foreshore
• greenspaces
• names
• national_parks
• rail
• railwaystations
• roads
• sea
• sites
• surfacewater
• urban_areas
• waterlines
• woodland

Vector Tile Summary
Zoom level  Tiles   Total level size (KB)  Average tile size (KB)  Max tile size (KB)                                                            
----------  ------  ---------------------  ----------------------  ------------------  -
0           1       1.08203125             1.08203125              1.08203125          ✓                                                         
1           2       3.7705078125           1.88525390625           2.2080078125        ✓                                                         
2           2       4.60546875             2.302734375             3.4150390625        ✓                                                         
3           2       6.5830078125           3.29150390625           5.3056640625        ✓                                                         
4           4       10.26171875            2.5654296875            4.607421875         ✓                                                         
5           9       661.779296875          73.53103298611111       494.447265625       ☓
6           20      1017.072265625         50.85361328125          431.734375          ☓
7           55      1341.486328125         24.390660511363638      351.5576171875      ✓                                                         
8           187     3765.3642578125        20.135637742312834      404.7255859375      ✓                                                         
9           733     13300.404296875        18.145162751534787      314.173828125       ✓                                                         
10          2888    27002.958984375        9.350055049991344       347.5537109375      ✓                                                         
11          11437   99497.529296875        8.699617845315641       440.7451171875      ✓                                                         
12          45411   353321.1767578125      7.780519626474037       275.1220703125      ✓                                                         
13          180823  489070.029296875       2.7046892778953726      95.5625             ✓                                                         
14          721319  1554572.978515625      2.1551809650315947      169.6875            ✓                                                         
```

# About the social preview image
The [social preview image](https://repository-images.githubusercontent.com/441779395/05ecbfce-ab3f-41f7-b6c8-7fed3b62a3eb) is Stacked Food Box (Jūbako) with Taro Plants and Chrysanthemums by Shibata Zeshin, available from [The MET](https://www.metmuseum.org/art/collection/search/53416?searchField=All&amp;sortBy=Relevance&amp;ft=stack+japan&amp;offset=0&amp;rpp=20&amp;pos=1)
