function myGoogleMap() {
    var googleMap = {
        center: new google.maps.LatLng(4.88609074, 114.93137509),
        zoom: 20,
    };
    var map = new google.maps.Map(document.getElementById("map"), googleMap);
}