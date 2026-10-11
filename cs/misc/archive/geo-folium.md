

### Add test to a map
    folium.map.Marker(
        [start_lat, start_lon],
        icon=DivIcon(
            icon_size=(150,36),
            icon_anchor=(0,0),
            html='<div style="font-size: 24pt">_Zoom to see bus routes_.</div>',
            )
        ).add_to(m)

feature_group = folium.FeatureGroup(name="Broomfield Catchment", show=False)
plot_broomie_catchment(feature_group, 'Broomfield Catchment - 30 mile radius ',  52.9570, -1.4255, 48000, 'blue' )
plot_broomie_catchment(feature_group, 'Broomfield Catchment - 15 mile radius ',  52.9570, -1.4255, 24000, 'yellow' )
plot_broomie_catchment(feature_group, 'Broomfield Catchment - 10 mile radius ',  52.9570, -1.4255, 16000, 'red' )
feature_group.add_to(m)




### make custom map markers
    https://mapicons.mapsmarker.com/markers/friends-family/male/?custom_color=dd62e3

# Install Geopandas
    conda install -c conda-forge geopandas
    conda install -c conda-forge folium


### folium icon colors
    ['red', 'blue', 'green', 'purple', 'orange', 'darkred',
    'lightred', 'beige', 'darkblue', 'darkgreen', 'cadetblue',
    'darkpurple', 'white', 'pink', 'lightblue', 'lightgreen',
    'gray', 'black', 'lightgray']


### add custom icon
    from folium.features import CustomIcon
    url = 'icons/college.png'
    icon = folium.features.CustomIcon(url, icon_size=(24, 24))
    folium.Marker(
                location=[lat, lon],
                # tooltip=tooltip,
                # icon=folium.Icon(color=color, icon='university', prefix='fa'),
                icon=icon
                ).add_to(map)



### add floating image
    # note: my.png must be in the same folder as the 'html' file
    from folium.plugins import FloatImage
    url = ('my.png')
    FloatImage(url, bottom=5, left=5).add_to(map)


### add custom icons
    feature_group = folium.FeatureGroup(name='custom', show=False)
    icon_path = r"icons/person.png"
    icon = folium.features.CustomIcon(icon_image=icon_path, icon_size=(25,25))

    folium.Marker(location=(df.iloc[0]['lat'], df.iloc[0]['long']),
                        tooltip='hello1',
                        icon=icon).add_to(feature_group)

    feature_group.add_to(m)



# save a shapefile
    output_geo.to_file('shapfiles-census-merged-wards-with-wd11cd', driver='ESRI Shapefile')


### Add individual colour to each Shapefile patch
    authority_colors = {'Greater Manchester':              'red',
                        'West Midlands':                   'lightgreen',
                        'Liverpool City Region':           'darkred',
                        'Tees Valley':                     'purple',
                        'West of England':                 'green',
                        'Cambridgeshire and Peterborough': 'blue'  }


    def authority_style(feature):
        properties = feature['properties']  <---------------------------- KEY "boiler-plate" LINE
        return {
            'fillColor': authority_colors[properties['cauth17nm']],   <-------- READ COLOR FROM DICTIONARY
            'fillOpacity': 0.5,
            'weight' : 2,
            'opacity': 0.3, # line opacity
            # 'color': 'white'
            'color': 'black'
        }

    authority_layer = folium.GeoJson(
                            authorities_geo,
                            name = 'Combined Authority',
                            tooltip = folium.GeoJsonTooltip(
                                                            fields=['cauth17nm'],
                                                            aliases=['Authority:'],
                                                            sticky=False, # follow mouse?
                                                            labels=False, # show aliases?
                                                            opacity=0.8
                            ),
                            style_function = authority_style, <---------------------
                            highlight_function = ward_highlight
                        )

    authority_layer.add_to(m)




### colored heatmap of wards/sectors
    def add_choropleth(geo_data, data, fill_color, name, show):
        new_layer = folium.Choropleth(
                                    name=name,
                                    geo_data=geo_data,
                                    key_on='feature.properties.wd16cd',
                                    data=data,
                                    columns=['WD18CD', 'conversion'],
                                    # bins=5,
                                    bins=[0,20,40,60,80,100],
                                    fill_color=fill_color,
                                    fill_opacity=0.6,
                                    line_opacity=0.6,
                                    overlay=True,
                                    show=show,
                                    highlight=False,
                                    legend_name='Conversion %'
                                        )
        new_layer.add_to(m)

    add_choropleth(app_wards_geo,  ward_conversion_overall, 'YlOrRd',   'Conversion Rate - Overall', True)
    add_choropleth(wards_geo_1718, ward_conversion_1718,    'Blues',  'Conversion Rate - 17/18',   False)
    add_choropleth(wards_geo_1819, ward_conversion_1819,    'Greens', 'Conversion Rate - 18/19',   False)



### "pyproj" problem:
    # AUG 2019: THIS PROBLEM DOESNT EXIST ANYMORE??
    # 'pyproj' needs extra files from a 'share' folder
    # os.environ["PROJ_LIB"] = "~/pyproj-data-folder"
    os.environ["PROJ_LIB"] = "C:\\Users\\enda.farrell1\\Miniconda3\\envs\\geo\\Library\\share"

    the actual contents of pyproj are stored in:
        $MY_CODE/jobs/derby-college/pyproj-data-folder/


# links
    - marker cluster examples  https://nbviewer.jupyter.org/github/python-visualization/folium/blob/master/examples/MarkerCluster.ipynb
    - fast marker popup   https://nbviewer.jupyter.org/gist/anonymous/33f38b09ad3bfa277e2d9c06e4bb588c

# Add layer CONTROL to show/hide layers
    folium.LayerControl(collapsed=False).add_to(m)

# dipslay (latitude / longitude) on map click
    m.add_child(folium.LatLngPopup())


### folium marker cluster stuff
    use the styling from here: small, medium, large colours
    https://cdnjs.cloudflare.com/ajax/libs/leaflet.markercluster/1.1.0/MarkerCluster.Default.css
    https://github.com/python-visualization/folium/pull/875
    <!-- full screen -->
    https://nbviewer.jupyter.org/github/python-visualization/folium/blob/master/examples/Plugins.ipynb
    float image
    https://www.kaggle.com/daveianhickey/how-to-folium-for-maps-heatmaps-time-data
    heatmap
    https://blog.cloudera.com/blog/2016/07/building-a-data-science-portfolio-storytelling-with-data-part-2-data-exploration/
    https://gis.stackexchange.com/questions/298623/spiderfy-all-leaflet-markerclusters-with-fewer-than-5-markers
    tiles='CartoDB positron'
    https://gist.github.com/sevamoo/2442e9463c80d1b3ef276bf42ca4f509#file-markercluster_color-js
    https://georgetsilva.github.io/posts/mapping-points-with-folium/
    https://github.com/Leaflet/Leaflet.markercluster/issues/323
    https://github.com/Leaflet/Leaflet.markercluster/issues/521
    https://github.com/python-visualization/folium/pull/875
    <!-- full screen -->
    https://nbviewer.jupyter.org/github/python-visualization/folium/blob/master/examples/Plugins.ipynb
    float image
    https://www.kaggle.com/daveianhickey/how-to-folium-for-maps-heatmaps-time-data
    heatmap
    https://blog.cloudera.com/blog/2016/07/building-a-data-science-portfolio-storytelling-with-data-part-2-data-exploration/
    https://gis.stackexchange.com/questions/298623/spiderfy-all-leaflet-markerclusters-with-fewer-than-5-markers
    tiles='CartoDB positron'
    https://gist.github.com/sevamoo/2442e9463c80d1b3ef276bf42ca4f509#file-markercluster_color-js
    https://georgetsilva.github.io/posts/mapping-points-with-folium/
    https://github.com/Leaflet/Leaflet.markercluster/issues/323
    https://github.com/Leaflet/Leaflet.markercluster/issues/521


### geo python courses
    - https://automating-gis-processes.github.io/2018/course-info/Installing_Anacondas_GIS.html
    - https://automating-gis-processes.github.io/CSC18/
    - https://automating-gis-processes.github.io/2018/index.html
    - https://www.earthdatascience.org/workshops/gis-open-source-python/
    - https://github.com/jwass/mplleaflet
    - intro to geo analysis in Python   https://www.youtube.com/watch?v=kJXUUO5M4ok
    - https://www.youtube.com/watch?v=uRvTeK5Ndq8
    - https://github.com/christyheaton/PyCon2018_GISTutorial
    - http://andrewgaidus.com/leaflet_webmaps_python/
    - https://gis.stackexchange.com/questions/34509/alternatives-to-using-arcpy
    - https://github.com/python-visualization/folium
    - https://stackoverflow.com/questions/46775667/plotting-uk-districts-postcode-areas-and-regions
    - https://www.aoc.co.uk/about-colleges/research-and-stats/data-sources
    - https://stackoverflow.com/questions/49591616/using-geopandas-to-plot-groups-of-points-on-a-map-produces-a-blank-image
    - https://stackoverflow.com/questions/35813638/plotting-results-onto-an-actual-map-with-pandas
    - https://gis.stackexchange.com/questions/307642/how-do-i-draw-london-bus-routes
    - liverpool interactive map    http://darribas.org/gds15/content/labs/lab_03.html
    - https://www.datadependence.com/2016/06/creating-map-visualisations-in-python/
    - https://ukdataservice.ac.uk/media/604752/puttingdataonmaps.pdf

### Derby city council links (interview prep)
    - https://derbycyclinggroup.org.uk/blog/materials-for-recreating-tube-map/
    - https://data.gov.uk/
    - https://info4derby.derby.gov.uk/#
    - http://geoportal.statistics.gov.uk/


    - https://developers.google.com/maps/billing/important-updates
    - http://www.statsmapsnpix.com/2018/06/how-many-people-live-in-english-green.html?m=1
    - https://www.travelinedata.org.uk/traveline-open-data/data-reporting/
    - https://twitter.com/wgeary/status/1023888458362826752?s=09
    - https://opensource.com/alternatives/arcgis
    - https://communityhub.esriuk.com/geoxchange/2018/6/13/whats-new-in-arcgis-pro-22
    - https://communityhub.esriuk.com/geoxchange/2018/7/17/revealing-hidden-communities-a-guide-to-multivariate-dot-density-maps?adbsc=socialproductupdates_20180810_2491421&adbid=1027857173701742592&adbpl=tw&adbpr=28076248
    - building a twitter bot https://pyvideo.org/pycon-uk-2018/building-a-twitter-bot.html
    - geo data course http://darribas.org/gds17/content/labs/lab_02.html
    - https://data.cdrc.ac.uk/dataset/geographic-data-science-in-python
    - https://netlytic.org/index.php
    - get old twitter tweets https://github.com/taspinar/twitterscraper/
    - get old twitter tweets https://github.com/Jefferson-Henrique/GetOldTweets-python
    - population and migration https://webarchive.nationalarchives.gov.uk/20160108194351/http://www.ons.gov.uk/ons/guide-method/compendiums/compendium-of-uk-statistics/population-and-migration/data-catalogue/index.html
    - https://www.ukdataservice.ac.uk/get-data/key-data
    - https://www.ons.gov.uk/peoplepopulationandcommunity/populationandmigration/populationestimates/


