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
For matters of correction we'll provide two normal users (so you can try all the features like Inbox and Invites) and an Admin one. 

(Normal User --> email: fjbarros1@miuandes.cl, password:123456)
(Normal User --> email: sschlotfeldt@miuandes.cl, password:123456)
(Administrator User --> email: administrator@gnail.com, password:123456)

NORMAL USER EXPERIENCE

EVENTS:
	If you go to the Events page, that's above beside the page name, you will be allowed to See all public events with their
	Event Name, Description, Host, Status (this may be blocked if it was reported more than 10 times) and a Link that will redirect you to the event
	Above in the middle area, you will also have search bar in wich you can sear events by a substring in their title or description, creator or organization.
	
	OWN EVENT'S
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
		Edit will allow you to edit the Event pic, it's name, Description, Venue if it's private or public, and will allow you to upload files, photos and videos.
		Delete, as it name says, will delete the ecent.
	
	OTHER PEOPLE EVENT'S
		Inside another user's event, you will be able to see it's Name. Host, Venue, Desription, Creation Date and if it's public or not.
		Right After this you will be able to see the Event Members, if you enter the link, you will see a list with all of the event members, but you won't be able to kick them.
		Also you will be able to see the different photos, files and videos.
		Beneath this at the right there is a button that will lead you to the different comments of the event.
		In the event's comment you will be able to Report a Comment you belive it;s in appropiate (if commited 10+ times it will be blocked), will be able to edit or delete your own comments as well as write a new one.
		Right beside the Comments button there's a button which will allow you to ve participant of the event(of course you will only be able to see the public ones)
		Finally at the bottom you will se a Back utton which will redirect you to the event's page and a Report button to repport an Event (as we commented earlier if it's reported 10+ times it will be blocked)

PEOPLE:
	If you go inte the People's Page, you will be able ta all the Users (except yourself), with their usename
 	and a link to their profile page, and below right a back button that will lead you to the home page.
	Inside their profile pae, you will be able to see their Name, Mail, Adress and Organization.
	You will be able to send a message to the user, and by clicking this buttonyou will be able to see your chat with the user, and be able to compose a message to him.
	And a back button that will redirect you to the People's page.

ORGANIZATION:
	If you enter the Organizations page, it will show you all the Organizations Name's, their admin names and a link to their organization profile page.
	You will also be able to Create  a new Organization and a Back button that will redirect you to the home page.
	
	OWN ORGANIZATION
		As you enter you will be able to see the Organization's name, description and Host.
		At the right you can see the organization Members, with links to their Profiles, if you enter to the link you will be able to see a list of Organization Members and the option to kick them out of the organization.
		There will also be all the publc events and the private one's, being able to enter to their profile page of every one of them.
		You can also create a new organization's event.
		Finally at the bottom you will e able to see the edit button being able ot change the organization's flyer, name and desription, de Delete button wich will erase the Organization
		And the back button wich will lead you to the all Organizations Page.

	OTHER PEOPLE ORGANIZATION's
		As you enter you will be able to see the Organization's name, description and Host.
		At the right you can see the organization Members, with links to their Profiles, if you enter to the link you will be able to see a list of Organization Members.
		You will have an option to Join the Organiztion.
		You can only see the Organization's Public Events.
		Finally you will have a back button to return to the Organizations Page.

INBOX:
	You'll be able to see all of your chats, with the last message sended and a column that will tell you if you have or haven't read the message.
	To start messaging someone you have to go to his or hers profile and send the a message!
	If you press the Name of the one you are having a conversation, you will be shown to your chats page and can writte message's to heach other.
	you will have a Back button that will lead you to your chats and there a Back button that will lead you to the home page.

PROFILE
	In your profile you're going to be able to see your Name, Biography, Mail, Address, Admin.
	You will be able to see your Organizations and will be provided with a button to go to their pages.
	You will be also shown all the pending invites to the different Events you have been invited. Your Events (the ones you have created), and the ones you are assissting to. For each event ther'll be a button that will redirect yo to their pages.
	There's an option to Change your password, that will ask you for your email, desired password and confirmation of it and your previous password.
	Finally there are two buttons, Edit and delete, Edit will let you edit your Profile photo, Name, Username, Biography, Address and Email.
	And the Delete button will delete your profile with all your information (such as invites, comments, messages, events, organizations,etc) Be Careful!


ADMINISTRATOR EXPERIENCE

	As an administrator you basically have the power to do anything.

EVENTS:
	Besides the features you would have if you were a simple mortal, you are able to edit and delete all events in any way.
	In the Events Page you are able to see ALL the events, even the private ones, and will also be handed a delete button at the right of each row.
	If you enter an event you will automatically be treated as if you were the one that created it, you will be able to see al the information mentioned previously, Edit and Delete the Event.
	You will also have the power in The event comment's, you can delete or edit the one you please.

PEOPLE
	As we mentioned earlier you will have the same priviliges as if you were the user
	Besides, you are going to have 2 extra buttons Info and Delete.
	Info will suministrate to you when the user has last signed and wheter he is an admin or a social user.
	Delete will let you Delete the user.
	If you enter, you'll be treated as if you were the user, meaning you will be able to see all of the user's information including their events, invites and  which events are they assissting.
	You will also be able to change the password, but for safety reasons you will need the previous user password.
	Finally you will have the Edit Button that will let you edit all of the user informetion, including his profile photo, and the Delete which will delete the specific user

ORGANIZATION
	As in Events, you will be granted with a delete butto to erase any organization you please.
	IN the organization you wll be almost be treated as a host, 
	
