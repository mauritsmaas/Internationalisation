<%--
  Created by IntelliJ IDEA.
  User: C
  Date: 10-3-2018
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>WORLD MAP</title>
    <style>

        #map {
            float: right;
            height: 100%;
            width: 79%;
        }
        #content-window {
            float: right;
            font-family: 'Roboto','sans-serif';
            height: 100%;
            line-height: 30px;
            padding-left: 10px;
            width: 19%;
        }

        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>
<div id="map"></div>
<div id="content-window"></div>
<script>


    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 4,
            center: {lat: 45.2740544, lng: 9.5655919},
            styles: [
                {
                    "featureType": "administrative.neighborhood",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "poi.business",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "labels.text",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "labels.text",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                }
            ]

        });

        setupMap(map);


        //TODO: onderstaande code is een andere manier van universiteiten ophalen

        // map.data.loadGeoJson('uni.json');
        //
        // map.data.setStyle(function(feature) {
        //     return /** @type {google.maps.Data.StyleOptions} */({
        //         strokeWeight: 1
        //     });
        // });
        //
        // // Set mouseover event for each feature.
        // map.data.addListener('click', function(event) {
        //     document.getElementById('info-box').textContent =
        //         event.feature.getProperty('name');
        // });


    }

    function setupMap(map) {
        // // Data van universiteiten, Naam - PlaceID - id
        var universities = [
            ['UvA', 'ChIJN_lcRHQJxkcRl-DQmFtiBO0', 4],
            ['Sydney University','ChIJFQKX_Xy7EmsRQ_fRGDQPAvM', 5],
            ['New York College', 'ChIJwZVT9ZpZwokRBfO1cTF0MNo', 3],
            ['Black Uni', 'ChIJAbR4tyJdzB0RTvq1GdzkkF8', 2],
            ['Moscow Uni', 'ChIJE7puRPVMtUYRiplfh1lruY8', 1]
        ];

        var infowindow = new google.maps.InfoWindow();
        var service = new google.maps.places.PlacesService(map);
        //foreach om alle universiteiten op de map te plaatsen
        for (var i = 0; i < universities.length; i++) {
            var uni = universities[i];
            service.getDetails({
                placeId: uni[1]
            }, function(place, status) {
                if (status === google.maps.places.PlacesServiceStatus.OK) {
                    var marker = new google.maps.Marker({
                        map: map,
                        position: place.geometry.location,
                        url: place.url
                    });
                    google.maps.event.addListener(marker, 'click', function() {
                        infowindow.setContent('<div><strong>' + place.name + '</strong><br>' +
                            'Place ID: ' + place.place_id + '<br>' +
                            place.formatted_address + '</div>');
                        infowindow.open(map, this);
                        var text = place.name +'<br>'+
                            place.formatted_address+'<br>'+
                            'Link to blog of student' +'<br>'+
                            'Review 1'+ '<br>'+
                            'Review 2'+ '<br>';
                        showInContentWindow(text);
                        //window.open(marker.url);  <- open de officiele site van uni
                    });
                }
            });
        }
    }
    // zorgt voor de side bar links
    function showInContentWindow(text) {
        var sidediv = document.getElementById('content-window');
        sidediv.innerHTML = text;
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAnNd27fHmzLYLMXHXX3lEF9-aD44YdJAY&libraries=places&callback=initMap">


</script>

</body>
</html>