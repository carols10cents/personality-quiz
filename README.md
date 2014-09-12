# Personality Quiz App

This app lets you create your very own version of the quiz format commonly found in Seventeen Magazine (if you're my age) or Facebook (if you're younger) that tells you "Which X are you?"

# Current features

* Hardcode questions, answers, and results (in a file config/quiz_data.csv)
* Have a form that displays the questions and answers
* When you submit the form, calculate the result and display it

# Future features

* Have a way to associate and display pictures with the results
* Have a "tweet your results" button
* Keep track of how many people took the quiz
* Keep track of how many people got which result
* Read the questions/answers/results from a database
* Be able to enter the questions/answers/results into the database easily
* Run this on heroku button

# Running the app

## Locally, for development

* Install ruby 2.1.2 via your method of choice
* `bundle`
* `cp config/quiz-data.csv.example config/quiz-data.csv` and edit
* `rails s`
* Visit `http://localhost:3000`

# License

MIT. See LICENSE.md.