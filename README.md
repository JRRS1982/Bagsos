# Welcome to Helping Hands!
Helping Hands is a webapp designed to help people help people.

[![Build Status](https://travis-ci.org/JRRS1982/Bagsos.svg?branch=master)](https://travis-ci.org/JRRS1982/Bagsos)
[![Coverage Status](https://coveralls.io/repos/github/JRRS1982/Bagsos/badge.svg?branch=master)](https://coveralls.io/github/JRRS1982/Bagsos?branch=master) [![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/JRRS1982/Bagsos)

Helping Hands was built by [Arthur Ashman](https://github.com/arthurashman), [Henry Gambles](https://github.com/henrygambles), [Jeremy Smith](https://github.com/JRRS1982) and [Evelyn Blázquez](https://github.com/EvelynAleLeo)

#### To see our site live and in action [click here](https://bagso.herokuapp.com/)!

[Description](#Description) | [Technology](#Technology) | [Getting started](#Getting-Started) | [Contributing](#Contributing) | [Testing](#Testing) | [Usage](#Usage) | [Product Roadmap](#Product-Roadmap) | [User Stories](#User-Stories) | [Learning Documentation](#Learning-Documentation)

## Description

This project was built by the Bagso team using Agile practices as our final group project at Makers Academy! 

## Technology

Ruby on Rails
Rspec
PostgreSQL
HTML5
CSS
JS
Travis
Heroku

## Getting Started
```bash
> git clone https://github.com/JRRS1982/Bagsos
> bundle install
> bin/rails db:create
> bin/rails db:migrate
```
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
```bash
> rspec
```
## Usage
```bash
> bin/rails server # Start the server at localhost:3000
```
## Product Roadmap
See our kanban board [here](https://trello.com/b/v1UxD2fP/bags-of-volunteers).

## User Stories:

### MVP
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

## Learning Documentation

We followed [this Getting Started guide](https://devcenter.heroku.com/articles/getting-started-with-rails5) from Heroku.

We used some guides from rubyonrails.org:
https://guides.rubyonrails.org/getting_started.html
https://edgeguides.rubyonrails.org/active_record_migrations.html
https://www.devwalks.com/lets-build-instagram-test-driven-with-ruby-on-rails-part-1/

