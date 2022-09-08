# Phase 3 React Project

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## My Comic Books Database

### Introduction


This is my frontend application, built using react to code in Ruby that can communicate with an API I set up with Sinatra and Active Record that in order to access a local database of comic book titles and characters.

###Screenshots
https://user-images.githubusercontent.com/106180266/189078809-09d9c869-57ec-4505-946d-c4b9848b6998.png)


### Getting Started

### Frontend Setup

If you wish to utilize this frontend for your own uses [**Fork and clone**][fork link] this repository to get started. If you wish to use it as it was intended, you must first fork and clone the backend. Once you start running a server with the backend, they will be ready to interact.

[fork link]: https://github.com/GeoffreyOgembo/Comic-Books-Database-App/blob/main/README.md

First run 
`npm install` to install the gems.

Then run `npm start` to start your frontend server
It will be run on `localhost:3000` 

### Backend Setup
To start the backend sercer first navigate into the backed directory by cd Backend then run the following commands:
  First run
   'bundle install' to install ruby gems
Then run 'rackup config.ru' to start your backed server.
Tt will run on "localhost:9292"

Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

## Usage
The intended use of this application is designed with the idea of someone who does not read comics in mind. Therefore, the best way to begin reading comics is to pick your favorite character or superhero and begin with those books. If you find someone else you are interested in, you can also search for their books.


## Design
The components are layed out in a way to utilize separation of concerns and cut down on excess uses of state, so I made many containers that can access my other components.





----
When you want to begin exploring the app, I reccommend using the backend, as there is plenty of data in the seeds file
