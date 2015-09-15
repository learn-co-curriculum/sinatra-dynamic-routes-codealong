# Dynamic Routes in Sinatra

## Teacher Outline
+ Show how the route can be created dynamically using a symbol in the route.
+ Understand the relationship between the route and params.
+ Show how you can use the data from the route to alter what is shown on the rendered view for that route

## Overview
How does AirBnB create a separate url for every property it hosts on its site? Would it make sense to hard-code hundreds of thousands of routes (`get '/property1'`, `get '/property2'`,`get '/property2356'`) in the controller to display each rental property? The controller would get messy and long very quickly. Instead, AirBnB (and Twitter, and Facebook, etc) use *dynamic routes* - routes that are created based on attributes within the url of the request. In this codealong we'll learn why dynamic routes are powerful and how to integrate them in to a Sinatra project.

## Objectives

+ Understand the purpose of dynamic routes.
+ Create dynamic routes in the controller.
+ Show the relationship between dynamic routes and the browser URL.

## Setup

To code along, fork and clone this lab. Run `bundle install` to make sure all of your dependencies are installed. Run `shotgun` to make sure that your application can run.

### Starter Code

In App.rb, we have two routes:

+ `get '/hello' do ` which returns the string "hello world" in the browser when we go to the url. This is an example of static routing, which we've seen.

+ `get '/hello/:name' do` uses dynamic routing - take a look at the difference between the two routes.


## Dynamic Routes

In your browser, head to `http://localhost:9393/hello/danny`. Now go to `http://localhost:9393/hello/victoria` and `http://localhost:9393/hello/lyel`. Notice how the content on the page changes depending on what we type as the URL in the browser. This is the beauty of dynamic routing - it allows us to take input straight from the url, instead of through a form. In doing so, we can modify the content of a view at the moment the get request is received by the controller.

+ Dynamic routes will create a key-value pair in the `params` hash. 
+ The key is determined by the symbol (for example `:name`) that you add to your route. 
+ The associated value will be the content in the url provided by the user.
+ Use the data provided in the same way you would a form - by accessing the key value pair in the `params` hash.

## Create your Own Dynamic Route

