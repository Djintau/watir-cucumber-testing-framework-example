# watir-cucumber-testing-framework-example

This is an example of testing framework using [Watir](http://watir.com/) and [Cucumber](https://cucumber.io/)

## Basic Usage

From root directory of this project:
- run `bundle install` to install the dependencies specified in Gemfile
- to run the test in chrome use command `cucumber` from your terminal
- to run the test in firefox use command `browser=firefox cucumber`

## Features

- when you run test for the first time it will download the appropriate version of the webdriver 
- uses [page-object gem](https://github.com/cheezy/page-object) that assists in creating flexible page objects for testing browser based applications
- custom page object elements by using widgets
- helper function for creating (for practical purposes) unique email addresses