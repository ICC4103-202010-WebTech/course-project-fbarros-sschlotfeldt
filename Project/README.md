# README


Members: 
- Sebastian Schlotfeldt V.
- Francisco Barros C.

Explanation:

First you nedd to run the following commands:

-$ yarn install --check-files

-$ bundle install

-$ rake db:migrate

-$ rake db:seed

-$ rails s


Explanation of Use:

HOMEPAGE

After the 'rails s' input on the console, you should redirect to your Mozilla Firefox brower and type 'localhost:300'
This will redirect you to our home page were you can watch all the public events, their Host, Description  and a maximum of 5 comments per event
If you try to go to any other link on the navigation bar it will ask you to sign in.
Below everything, you will have 2 links that eill redirect you to our Terms of Services or Terms of Use.


 SIGN IN/SIGN UP/SIGN IN WITH GOOGLE

In the superior right part of our application, you will have 3 options, sign in, sign up and sign in with google.
The first one will allow you to enter the full experience (Not admin) of the page.
Sign Up will allow you to create an account for the page, it will ask you a quantity of needed information and the will create an account.
The sign In only works if you already have an account. You can enter as a normal user or if you are an admin from the same Sign In.
If you forgot your password there's a link below the log in utton which will send you a password recovery link as long as you provide a registered email
For matters of correction we'll provide a normal user and an Admin one. 
(Normal User --> email: fjbarros1@miuandes.cl, password:123456)
(Administrator User --> email: administrator@gnail.com, password:123456)

NORMAL USER EXPERIENCE

EVENTS:
	If you go to the Events page, that's above beside the page name, you will be allowed to See all public events with their
	Event Name, Description, Host, Status (this may be blocked if it was reported more than 10 times) and a Link that will redirect you to the event
	Above in the middle area, you will also have search bar in wich you can sear events by a substring in their title or description, creator or organization.
	
	OWN EVENT
		Inside your own event you will have the name of your Event, it's Host, Venue, Description, Creation Date and if it's public or private.
		You will have 2 buttons which you can Start the votation on your Event or Add Dates for the Event Members to Vote on.
		If you already have dates you will have the option to Delete them or Edit them.
		If you choose to End the Votation you'll be able to see the new date above the information and beneath the event picture (if it has one, if it doesn't it will show a Thumbnail)
		Continiuing, you will be able to see the event members, and if you click on the link it will show you a list of them and you'll be able to kick them from your event
		You can also view the different photos, videos or files you have uploaded to your Event.
		You can Invite all the different users, if you click on the button a list will be displayed where you can see all of the users, if they are pending, assisting or will give you the option to invite them.
		 If you enter to the comments of the event(below at the right) you are going to be able to see them, edit the, add a new one or delete them if you don't like them.
		Finally at the bottom you will see 3 buttons, Back, Edit and  Delete.
		Back will take you to the event's display page .
		Edit will allow you to edit all the different things on your 
