//app/javascript/controllers/map_controller.js
import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    center: Object,
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/iloverob/clpr4wurd016v01pocsa6dore",
      center: [4.895168, 52.370216],
      zoom: 10
    });

    this.#addMarkersToMap();
    this.#fitMapToMarkers();
    this.map.addControl(
      new MapboxGeocoder({
          accessToken: mapboxgl.accessToken,
          mapboxgl: mapboxgl,
          placeholder: "Search for places"    
      }), 'top-left'
  );
    // if (this.centerValue) {
    //   console.log(this.centerValue);
    //   const bounds = new mapboxgl.LngLatBounds();
    //   bounds.extend([this.centerValue.lng, this.centerValue.lat]);
    //   this.map.fitBounds(bounds,{
    //     padding: 70,
    //     maxZoom: this.centerValue.zoom,
    //     duration: 0,
    //   });
    // }
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);

      const customMarker = document.createElement("div");

      customMarker.innerHTML = marker.marker_html;

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);

      customMarker.addEventListener("dblclick", () => {
      });
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 50, maxZoom: 17, duration: 0 })
  }
}
