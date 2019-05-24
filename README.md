# Welcome to Helping Hands!
Helping Hands is a webapp designed to help people help people.

[![Build Status](https://travis-ci.org/JRRS1982/Bagsos.svg?branch=master)](https://travis-ci.org/JRRS1982/Bagsos)
[![Coverage Status](https://coveralls.io/repos/github/JRRS1982/Bagsos/badge.svg?branch=master)](https://coveralls.io/github/JRRS1982/Bagsos?branch=master) [![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/JRRS1982/Bagsos)

Helping Hands was built by [Arthur Ashman](https://github.com/arthurashman), [Henry Gambles](https://github.com/henrygambles), [Jeremy Smith](https://github.com/JRRS1982) and [Evelyn Blázquez](https://github.com/EvelynAleLeo)

#### To see our site live and in action [click here](https://bagso.herokuapp.com/)!

[Description](#Description) | [Technology](#Technology) | [Getting started](#Getting-Started) | [Contributing](#Contributing) | [Testing](#Testing) | [Usage](#Usage) | [Product Roadmap](#Product-Roadmap) | [User Stories](#User-Stories) | [Learning Documentation](#Learning-Documentation)

## Description

This project was built by the Bagso team using Agile practices as our final group project at Makers Academy!

Our wish was to create a social good project, that demostrated a number of teamworking skills and allowed us to practice and develop our technical abilities.

After much deliberation we slowly settled into the idea of creating a applicaiton that connected people in need with those that would be willing to help. Our brainstorming centered around providing maps to the volunteer to ensure they could find local tasks, providing a way for users to communicate with each other and some form of ranking/punishment system to reward generous volunteers and protect those in need.

## Technology

- Ruby on Rails (Ruby framework)
- Rspec (Testing of Ruby code)
- PostgreSQL (Database)
- HTML5 (Web structure)
- CSS (Styling)
- JavaScript (Web)
- Travis (Continious Integration)
- Heroku (Continious Deployment)

## Getting Started
```
> git clone https://github.com/JRRS1982/Bagsos
> bundle install
> bin/rails db:create
> bin/rails db:migrate
```
A Google Maps API key will be needed, gather your own personal API key from Google Maps,
then running the below in the command line to create credentials.yml.enc file and master.key files (will need to be deleted and below rerun after each git pull).
```
EDITOR="vi" bin/rails credentials:edit
```
and inserting "google_maps_api_key: +your key here+" into the vi editor.

## Contributing
Follow the "fork-and-pull" Git workflow:
- **Fork** this repo
- **Clone** the project to your own machine
- **Branch** from master
- **Code** your feature implementation or bug fix with accompanying tests
- **Test** that your code works with ours
- **Commit** changes to your own branch
- **Push** your work back up to your fork
- Submit a **pull request** so that we can review your changes

## Testing

Can be run from the terminal with the following command;
```
> rspec
```
## Usage

Run the following from your terminal to load the local server.
```
> bin/rails server
```
## Product Roadmap

We tried to follow an Agile process, with a Kanban board (on Trello) at its core, it was used to plan sprints at the beginning of the project, please see a copy of our kanban board [here](https://trello.com/b/v1UxD2fP/bags-of-volunteers).

## User Stories:

Our original intention was to get the MVP in place within two days, including project setup.

### MVP: v1.0
```
As a user
I want to be able to list a task
So that I can request help
```
```
As a user
I want to be able to see a list of tasks
So that I can help someone in need
```
### v 1.2
This second iteration differentiates two user types. Those who are volunteering, and those who are getting benefit from the volunteers' efforts (beneficiaries).

Volunteers are not able to list tasks of their own, and beneficiaries are limited to seeing only the tasks they themselves have requested help for. 
```
As a user 
I want to be able to see information on the homepage
So that I can understand the service
```
```
As a user 
I want to be able to sign up from the homepage
So that I can sign up to the service
```
```
As a returning user 
I want to be able to log in from the homepage
So that I can log in to use the service
```
```
As a volunteer
I want to see a volunteer option selectable on sign up
So that I can access volunteer features
```
```
As a beneficiary
I want to see a beneficiary option selectable on sign up
So that I can access beneficiary features
```
```
As a volunteer 
I want to be redirected to a list of tasks after sign up
So that I can see what help I can provide
```
```
As a volunteer 
I want to be redirected to a list of tasks after log in
So that I can see what help I can provide
```
```
As a beneficiary 
I want to be redirected to a page where I can list a task sign up
So that I can start requesting help
```
```
As a beneficiary 
I want to be redirected to a list of my tasks after log in
So that I can manage my tasks
```

## Further Development

- A reward system (awarding badges / points to volunteers / beneficiaries).
- Dynamic maps on individual tasks.
- Further styling / CSS work on the site overall.
- Better quality unit tests / JavaScript testing.
- UML diagrams.

## Learning Documentation

We followed [this Getting Started guide](https://devcenter.heroku.com/articles/getting-started-with-rails5) from Heroku.


We refered to some guides from rubyonrails.org:
- https://guides.rubyonrails.org/getting_started.html
- https://edgeguides.rubyonrails.org/active_record_migrations.html
- https://www.devwalks.com/lets-build-instagram-test-driven-with-ruby-on-rails-part-1/

