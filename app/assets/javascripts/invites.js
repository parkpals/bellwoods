var InvitesController = Paloma.controller('Invites');

InvitesController.prototype.new = function(){
   var handler = Gmaps.build('Google');
   var avatar_url = this.params.avatar;

   handler.buildMap({ 
     provider: { 
       zoom: 18, 
       disableDefaultUI: true, 
       scrollwheel: false,
       draggable: false 
     }, 
     internal: {
       id: 'map'
     } 
   }, function(){
     if(navigator.geolocation) {
       navigator.geolocation.getCurrentPosition(displayOnMap);
     }
   });

   function displayOnMap(position){

     var marker = handler.addMarker({
       lat: position.coords.latitude,
       lng: position.coords.longitude,
       "picture": {
         "url": avatar_url,
         "width":  55,
         "height": 55
       }
     });

     // Pass location to hidden fields
     var set_location = function() {
       $('.user_latitude').val(position.coords.latitude);
       $('.user_longitude').val(position.coords.longitude);
     };

     handler.map.centerOn(marker);
     set_location();
   };
  };

InvitesController.prototype.show = function(){
	var user_invite_data = $('.location_information').data('invite');
	var sender_lat = user_invite_data.latitude;
	var sender_lng = user_invite_data.longitude;
	var avatar_url = this.params.avatar;

	handler = Gmaps.build('Google');

	handler.buildMap({ 
	 provider: { 
	   zoom: 18, 
	   disableDefaultUI: true, 
	   scrollwheel: false,
	   draggable: false 
	 }, 
	 internal: {
	   id: 'map'
	 } 
	}, function(){

	 var marker = handler.addMarker({
	   lat: sender_lat,
	   lng: sender_lng,
	   "picture": {
	     "url": avatar_url,
	     "width":  55,
	     "height": 55
	   }
	 });

	 handler.map.centerOn(marker);
	});
};