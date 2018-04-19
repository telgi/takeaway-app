# Takeaway Challenge Revisited

Simple console application that interacts with the user on the command line. The
user will view the takeaway menu and add items to their basket before submitting
an order.

## Installation

`git clone git@github.com:telgi/takeaway-challenge-revisited.git`

Run `bundle install` to download any gem dependencies

## Usage

Run `ruby app.rb` in the command line to interact with application

## User Stories

```
As a customer,
So that I can check if I want to order something,
I would like to see a list of dishes with prices.

As a customer,
So that I can order the meal I want,
I would like to be able to select some number of several available dishes.

As a customer,
So that I can verify that my order is correct,
I would like to check that the total I have been given matches the sum of the various dishes in my order.

As a customer,
So that I am reassured that my order will be delivered on time,
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.
```

## Features

* User can view all dishes and their prices []
* User can select an item and add it to their basket []
* User can view the current basket and the running total []
* User will receive a confirmation message of when their order will arrive []

## Domain Model

![alt text](assets/images/domain_model.jpg)

## Process

1) Establish core features via user stories
2) Diagram how Ruby objects will interact with each other
