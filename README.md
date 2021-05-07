# Student COVID Database

Video of demonstrating using this web app can be found in the video Demonstration_Video.mp4

UML diagram, workflow chart, and implications of this project can be found in Detailed_Explaination.pdf

This program serves as a web app that tracks important information about a Northeastern student who have had contracted COVID19 in the past. It can be used for any event organizer to review their guest list and evaluate the safety for inviting certain individual to a face-to-face event.

For the purpose of keeping the file size reasonable, the code folder did not include installed packages used for this project. One can download all the relevant packages by executing "npm install package.json" in the terminal, as package is included in the code folder.

Libraries and languages used: 
* Front-end: JavaScript, HTML, and React.js. CSS for styling.
* Back-end: JavaScript, Node.js, SQL(MySQL workbench)

The installation history can be found in package.json.

# Front-end: Client
The Client is the front end of the program. It uses React.js to handle any user's attempts to create, retrieve, update, and delete a data entry in the database. 
* Create: We create a forms for user to fill out. The forms contain dropdown selections based on other relevant data tables as well as some input option for other key information. The forms will take the data to the backend and add relevant data to the data table when the submit button is clicked.
* Retrieve: By clicking the refresh button, the program will go through query in the backend to retrieve the most updated data table and display it through an HTML table.
* Update: By clicking the edit button, user can modify certain information about a data entry regarding to a student based on the given student id which is used as the primary key in the database. 
* Delete: By clicking the delete button behind any data entry, the front-end will send the student id of the student to the backend and delete such data entry. 

Important Buttons:
* Submit: calls on a function that leads to a INSERT sql statement in the backend to store all the data in the filled out form in our database.
* Edit: To open a pop-up form that allows user to enter certain information user wants to change about a student and uses the input student id to execute the UPDATE sql statement in the backend.
* Delete: When the button is clicked, the client sends the student id of the student in that row to the backend to execute the DELETE sql statement.
* Refresh: Sends a instruction to the backend to execute the SELECT sql statement and retrieve information from the student data table and use it to update the table displayed on user interface.
* Homestate: Sends a instruction to the backend to execute the SELECT sql statement and retrieve information from the homestate data table and use it to update the pop-uped table displayed on user interface.
* Close: To hide the pop-uped form for "Edit" or the pop-uped table for "Homestate".

# Back-end: Server
The server is the back end of the program. It uses Node.js to handle any instruction sent from the front-end and connect to the MySQL workbench server. Every time user clicks on certain button in the front-end, a function would be called that leads to another function in the backend which executes certain query to our database. Then the server would send the result of the query back to the front-end to update what the user can see on the user interface. 

The details of how the front-end calls functions in the back-end is discussed in the buttons section of the client part. 
