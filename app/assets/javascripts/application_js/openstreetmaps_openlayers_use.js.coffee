map = undefined
projection_wgs = undefined
projection_smp = undefined
position = undefined

# == On DOM Ready events =====================================================
$(document).on 'ready page:load', ->
  
  # Define variables for OpenLayers
  center_lat = "12.9089389" # DSCE latitude
  center_lon = "77.5664343" # DSCE CA longitude
  zoom = 15
  mapnik = new OpenLayers.Layer.OSM() # OpenStreetMap Layer
  projection_wgs = new OpenLayers.Projection("EPSG:4326") # WGS 1984
  projection_smp = new OpenLayers.Projection("EPSG:900913") # Spherical Mercator
  position = new OpenLayers.LonLat(center_lon, center_lat).transform(projection_wgs, projection_smp)
  
  # Create the map
  map = new OpenLayers.Map("map") # Argument is the name of the containing div.
  map.addLayer mapnik
  map.setCenter position, zoom # Set center of map
  markers = new OpenLayers.Layer.Markers("Markers")
  map.addLayer markers
  size = new OpenLayers.Size(21, 25)
  offset = new OpenLayers.Pixel(-(size.w / 2), -size.h)
  icon = new OpenLayers.Icon("marker.png", size, offset)
  markers.addMarker new OpenLayers.Marker(position, icon)
  
  # Fix map size on dom ready
  ol.stretch_canvas()
  return


# == Window.resize events ===================================================
$(window).resize ->
  
  # Fix map size on resize
  ol.stretch_canvas()
  return


# == Functions Below =========================================================

ol = stretch_canvas: ->
  oldiv_height = $("#map").parent().css("height")
  oldiv_width = $("#map").parent().css("width")
  $("#map").css "height", oldiv_width
  $("#map").css "width", oldiv_width
  return
