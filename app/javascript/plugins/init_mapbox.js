import mapboxgl from 'mapbox-gl';

const initMapbox = () =>
{
  const mapElement = document.getElementById('map');
  // document.getElementById('map') : va chercher dans l'html index trip la balise où id = map

  const fitMapToMarkers = (map, markers) =>
  {
  const bounds = new mapboxgl.LngLatBounds(); // bound : définir les frontières de ma map
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  const addMarkersToMap = (map, markers) =>
  {
    // markers.forEach((marker) =>
    // {
    //   const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    //   new mapboxgl.Marker()
    //     .setLngLat([ marker.lng, marker.lat ])
    //     .setPopup(popup) // add this
    //     .addTo(map);
    // });

    markers.forEach((marker) => {

      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      // Create a HTML element for your custom marker
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.backgroundRepeatX = 'no-repeat';
      element.style.backgroundPosition = 'center';
      element.style.height = '40px';
      element.style.width = '50px';


      // Pass the element as an argument to the new marker
      new mapboxgl.Marker(element)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
    });

  };

  if (mapElement)
  { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    // mapElement défini plus haut (renvoie depuis l'html index trip la balise où id = map)
    // .dataset.mapboxApiKey : dans cette balise, va chercher la data(pour dataset) de mapbox-api-key (pour mapboxApiKey)

    const map = new mapboxgl.Map(
    {
      container: 'map', // id de la div qui va contenir la map
      style: 'mapbox://styles/mapbox/streets-v10' // sur le site de mapbox
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    // console.log(markers)

    // markers.forEach((marker) =>
    // {
    //   new mapboxgl.Marker()
    //     .setLngLat([ marker.lng, marker.lat ])
    //     .addTo(map);
    // });

    fitMapToMarkers(map, markers);

    addMarkersToMap(map, markers);
  }
};


export { initMapbox };
// export { addMarkersToMap};
