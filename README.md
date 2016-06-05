# bellwoods
A finder app for Trinity Bellwoods Park

## App functionality
* Users can send their location via email to a friend to better find them inside Trinity Bellwoods park. (Twilio/Mailgun)
* Email includes link to unique and temporary instance of a location within the park
* Page displays map with drop-pin, user you are meeting, and a custom description or message ("Hey, I'm wearing a red shirt over by the dog park")

## Things to Investigate
* How to make invited self-destruct after certain time.
* How to google maps


## Models
* User
	- email (required for login)
		- or twitter oAuth
	- password

* Profile
	- first name
	- last name
	- home park (default park)
	- bio
	- phone number (optional)
	- profile pic

* Meet-invite (temporary: deletes after 12 hours)
	- Location
	- Message
	- User who sent invite
	- phone number/email of invitee
	- [phase 2] Add a custom snapshot of your location

* Favorite locations
	- location
	- nickname
	- description
	- Owner

* Parks (ability to add additional parks to the app later)
	- Location
	- Map
	- Landmarks