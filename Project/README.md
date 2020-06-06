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


Of you want to try other users, there is a $current_user variable in ApplicationController in which you should change de id in order to navigate as other existing user.

The web page wil function as an event page, it will asume the log in of a determined user, this will let you have special features inside certain events and organizations (as long as they belong to you), letting edit them or invite users to your own events.

Need Fixing

The invites already created will display on the profile page and join the event, but we couldnt make it to create new invites, becaused it showed up an error that said that our attributes given were null.
Our program could not generate the the votes so we made a begin-rescue that allows the program not to fail.
We couldnt delete events organizations or coments

we couldnt make the faker gem works, so we did more seeds for you to try
