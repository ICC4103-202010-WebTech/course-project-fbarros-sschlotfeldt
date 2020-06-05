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

Explanations:

The web page wil function as an event page, it will asume the log in of a determined user, this will let you have special features inside events or organizations, letting edit them or invite users to your own events.

Need Fixing

The invites already created will display on the profile page and join the event, but we couldnt make it to create new invites, becaused it showed up an error that said that our attributes given were null.
Our program could not generate de invites and the votes so we made a begin-rescue that permit the program not to fail.
We couldnt create an event or an organization, the thing we deliver in forms apparently didn't create, it says that they were null.
We couldnt delete events organizations or coments
We didnt add videos or files to the event.

we couldnt make the faker gem works, so we did more seeds for you to try
