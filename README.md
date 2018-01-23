# Driftrock Tech Test


## Challenge

You have been given access to a JSON API on https://driftrock-dev-test-2.herokuapp.com There are 2 endpoints, 1 for user data (/users) and another for purchase (/purchases) data. Both these endpoints are paginated (?per_page=100&page=1) more information can be found in the documentation found here http://docs.driftrockdevtest.apiary.io/#. One of the quirks about this API is that the pagination will return empty data arrays for pages beyond its page limit and there is no meta information to query to ask for the total number of pages or entries. The only way to know you've reached the end is that the number of entries returned is less than the amount requested per page.

### The Task
Create a script that can be run from the command line and can answer the questions listed below. The script accepts one parameter to specify which question it will answer and in some cases an optional argument. The script will print the answer to the console output.
The script should implement these commands:
- total_spend [EMAIL]: What is the total spend of the user with this email address [EMAIL]?
- average_spend [EMAIL]: What is the average spend of the user with this email address [EMAIL]?
- most_loyal: What is the email address of the most loyal user (most purchases)?
- highest_value: What is the email address of the highest value user?
- most_sold: What is the name of the most sold item?


## My Approach

First 60mins:

I spent this time reading the challenge carefully and planning out how I would approach it. I knew I needed more practice with APIs so this was a great challenge. I completed the Codecademy short course on how to use APIs and Ruby to give myself a review. I then worked out how I would plan my project folder and set it up. After, I decided to first focus on unpacking the API endpoints to allow me to complete the commands, so I diagrammed what information they contained, how that information was stored and where the crossovers were.

Final 120mins:

For each of the commands I completed, I first wrote out what elements the command needed for it to return the desired outcome. I then wrote the Rspec test for what I wanted the result to be. After, I researched how to get those elements out of the two API datasets and how to combine then to reach the desired endpoint.

## To Run this Program

- Open the file `app.rb` through IRB.
- Instantiate DataManager. 
- Call the command methods.

## Future Possible Plans

I found this challenge really engaging and useful. However, the 2-3 hour time limit meant I did not finish anywhere near as much as I would have liked to. I had planned to:
- finish the command methods.
- create separate folders with classes to receive the output from each API endpoint. These classes would have performed the first layer of unpacking to get the user and purchase data to the point you see in the app.rb variables.
- instantiate each data class in the initialize method of the DataManager class, so that the commands could be called on the data.
