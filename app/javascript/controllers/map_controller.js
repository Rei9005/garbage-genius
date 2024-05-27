import { Controller } from "@hotwired/stimulus"
import mapboxgl from '@mapbox/mapbox-gl' // Don't forget this!

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    user: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/kinari1990/clwoolrp200sk01pp8m5a42ih"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.#addZoomControls()
  }




  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const spotMarker = document.createElement("div")
      spotMarker.innerHTML = marker.marker_html
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      new mapboxgl.Marker(spotMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })

    this.userValue.forEach((marker) => {

      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }
  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.userValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 17, duration: 0 })
  }


  #addZoomControls() {
    const zoomInButton = document.createElement('button');
    zoomInButton.textContent = '+';
    zoomInButton.className = 'mapboxgl-ctrl-icon mapboxgl-ctrl-zoom-in';
    zoomInButton.addEventListener('click', () => {
      this.map.zoomIn();
    });

    const zoomOutButton = document.createElement('button');
    zoomOutButton.textContent = '-';
    zoomOutButton.className = 'mapboxgl-ctrl-icon mapboxgl-ctrl-zoom-out';
    zoomOutButton.addEventListener('click', () => {
      this.map.zoomOut();
    });

    const zoomControls = document.createElement('div');
    zoomControls.className = 'mapboxgl-ctrl-group mapboxgl-ctrl';
    zoomControls.appendChild(zoomInButton);
    zoomControls.appendChild(zoomOutButton);

    this.map.addControl(new mapboxgl.NavigationControl(), 'top-right'); // Add default navigation controls
  }
}
