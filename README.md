# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version- 2.4.1 & Rails version - 5.1.6

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
  
 -> To deploy a specific branch to Production, use: `git push heroku master`

# restaurant

Generate online menu for a restaurant with a fixed number of categories and images for each category. Allow users to enter new dishes and display them on a single menu page.
This project is to create a web app for a restaurant. This app will allow the restaurant to display their menu in an appealing format on the web, user can edit or destroy particular dish from course.

#Installing

* bundle install
* rake db:setup
* rails server
* localhost:3000(open link in web browser)

#working link

https://restauapp.herokuapp.com/

# Architecture and models

Two models: Dish and Course. Dishes should have prices, names, and descriptions. Courses should have names. Course_id is referenced to dish means one course has many dishes.Users can add dishes for a specific course by clicking on an add new dish button underneath that specific course.User can delete dish from edit page of specific dish.
