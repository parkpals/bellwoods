# bellwoods
A friend finder app for Trinity Bellwoods Park

## App functionality
* Users can send their location via email to a friend to better find them inside Trinity Bellwoods park
* Email includes link to unique and temporary instance of a location within the park
* Page displays map with drop-pin, user you are meeting, and a custom description or message ("Hey, I'm wearing a red shirt over by the dog park")

## Things to Investigate
* How to make invited self-destruct after certain time.
* How to google maps

## Models
	* User
	- Email (required for login)
		- or Twitter oAuth
	- Password

	* Profile
	- Name (required)
	- Avatar (optional)

	* Invite
	- Location (required, populated with Google geolocation services)
		- Latitude:integer
		- Longitude:integer
	- Recipient: Friends' Emails (required, one text field at a time with +/- buttons to add/remove emails)
	- Message (optional)
	- Name (user who sent invite)
	- Button that sends temporary randomized URL of invite show view to friends' emails

	* Parks (ability to add additional parks to the app later)
	- Location (boundaries)
	- Map
	- Landmarks

	* Favorite locations (to add later)
	- Location
	- Nickname
	- Description

## Flow
- User arrives on landing page
- User clicks to login or creates an account
- Once logged in, user lands on page that shows index view of invites and the form to create a new invite
- There is also a button to edit their profile
- When the user creates an invite, it will generate a temporary URL to the invite's show view that will be sent to each email in the friends' email list
- Friends will receive an email that contains this URL as well as the sender's name and message
- If the URL is expire or the sender has deleted the invite, it will show a message

##Notes

- We will limit the bounds of the map to Trinity Bellwoods area
- Invite index view shows list of active invites and an expiry countdown for each
- After invite is created, sender can delete the invite in the index view