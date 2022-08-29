@extends('layouts.main')

<link rel="stylesheet"
href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css"
integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="
crossorigin=""/>

<script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
crossorigin="">
</script>

<script type="text/javascript" src="/js/leaflet.ajax.js"></script>

<link rel="stylesheet" href="/css/gis.css">

@section('container')

<h1 class="mb-5 text-center">{{ $title }}</h1>

<div id='map'></div>

<script>

var map = L.map('map').setView([4.978633, 97.222142], 10);

var tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
	maxZoom: 19,
	attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

var info = L.control();

info.onAdd = function (map) {
	this._div = L.DomUtil.create('div', 'info');
	this.update();
	return this._div;
};

info.update = function (props) {
	this._div.innerHTML = '<h6> Persebaran TB Paru RSU Cut Meutia Aceh Utara </h6>' +  
	(props ? '<b>' + props.name + '</b> <br/>' : 'Hover over a state');
};

// +props.name+

info.addTo(map);

function getColor(d) {
	return d > 10 ? '#BD0026' :
	d > 5 ? '#FD8D3C' :
	d > 0 ? '#FED976' : '#FFEDA0';
}

function highlightFeature(e) {
	var layer = e.target;
	layer.setStyle({
		weight: 5,
		color: '#666',
		dashArray: '',
		fillOpacity: 0.7
	});
	if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
		layer.bringToFront();
	}
	info.update(layer.feature.properties);
}

function zoomToFeature(e) {
	map.fitBounds(e.target.getBounds());
}

var geojson;

<?php foreach ($datagis as $key => $value) { ?>

geojson = new L.GeoJSON.AJAX(["storage/{{ $value->geojson }}"], {
    style: function(feature){
		return {
			weight: 2,
			opacity: 1,
			color: 'white',
			dashArray: '3',
			fillOpacity: 0.6,
			fillColor: getColor(<?= $value->jlh ?>)
		};
	},
	onEachFeature: onEachFeature
}).addTo(map);

// info.update = function (f) {
// 	this._div.innerHTML = '<h6>Persebaran TB Paru RSU Cut Meutia Aceh Utara</h6>' +
// 	(f ?
// 	'<b>' +
// 	"Kecamatan : {{ $value->nama_kecamatan }}" +
// 	'</b><br />' +
// 	"Jumlah : {{ $value->jlh }}" +
// 	'' : 'Hover over a state');
// };

geojson.eachLayer(function(layer) {
	layer.bindPopup("Kecamatan : {{ $value->nama_kecamatan }}")
});

<?php } ?>

function resetHighlight(e) {
	var layer = e.target;
	layer.setStyle({
		weight: 2,
		opacity: 1,
		color: 'white',
		dashArray: '3',
		fillOpacity: 0.6
	});
	info.update();
}

function onEachFeature(feature, layer) {
	layer.on({
		mouseover: highlightFeature,
		mouseout: resetHighlight,
		click: zoomToFeature
	});
}

map.attributionControl.addAttribution('Persebaran penyakit TB Paru');

var legend = L.control({position: 'bottomright'});

legend.onAdd = function (map) {

	var div = L.DomUtil.create('div', 'info legend');
	var grades = [0 , 5, 10];
	var labels = [];
	var from, to;

	for (var i = 0; i < grades.length; i++) {
		from = grades[i];
		to = grades[i + 1];

		labels.push(
			'<i style="background:' + getColor(from + 1) + '"></i> ' +
			from + (to ? '&ndash;' + to : '+'));
	}

	div.innerHTML = labels.join('<br>');
	return div;
};

legend.addTo(map);

</script>

@endsection