import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { priceRange } from "../plugins/custom_price";

initMapbox();
priceRange();
initAutocomplete();

// TABS
const tabs = document.querySelectorAll('.tab');
const tabsContent = document.querySelectorAll('.schedule');

tabs.forEach(tab => tab.addEventListener("click", (event) => {
  if (!tab.classList.contains('active')) {
    tabs.forEach( t => t.classList.toggle('active'));
    tabsContent.forEach( tc => tc.classList.toggle('hidden'));
  }
}));
