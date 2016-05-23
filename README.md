# bellwoods
A finder app for Trinity Bellwoods Park

## App functionality
* Users can send their location via SMS/email(?) to a friend to better find them inside Trinity Bellwoods park. (Twilio/Mailgun)
* SMS/email includes link to unique and temporary instance of a location within the park
* Page displays map with drop-pin, user you are meeting, and a custom description or message ("Hey, I'm wearing a red shirt over by the dog park")


## Models
* Users
	- first name
	- last name
	- phone number (optional)/email (required for login)
		- or twitter oAuth
	- home park (default park)
	- bio

* Meet-invite (temporary: deletes after 12 hours)
	- Location
	- Message
	- User who sent invite
	- phone number/email of invitee

* Favorite locations
	- location
	- nickname
	- description
	- Owner

* Parks (ability to add additional parks to the app later)
	- Location
	- Map
	- Landmarks