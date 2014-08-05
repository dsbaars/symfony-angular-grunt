Symfony 2 + AngularJS + Grunt
========================

This is an example project to show how you can combine Symfony 2, AngularJS and Grunt.

  - [Requirements](#requirements)
  - [How to install and run](#how-to-install-and-run)
    - [Dependencies](#dependencies)
    - [Running](#running)
  - [Components](#components)
    - [PHP](#php)
    - [JavaScript ("Server-side")](#javascript-server-side)
    - [Client-side](#client-side)
  - [Future work](#future-work)
  - [Why did  I want this?](#why-did--i-want-this)


## Requirements
- composer (and PHP of course)
- npm
- bower
- grunt-cli


## How to install and run

### Dependencies
Just run  `composer install`.
I created a Composer script-handler that runs `npm install` and `bower install`.

### Running
My usual way is open two Terminal-way tabs and running:
1. `app/console server:run`
2. `grunt watch`

You can also use XAMPP or Vagrant.
For SF2 development Vagrant does not seem to be very slow, even after optimizing like described here:
- http://www.whitewashing.de/2013/08/19/speedup_symfony2_on_vagrant_boxes.html

## Components

### PHP

Symfony 2.5 standard edition (without Acme-Demo-stuff)
with the following changes:
- AsseticBundle disabled
- FOSJsRoutingBundle

### JavaScript ("Server-side")

- Grunt
- LESS compiler
- CoffeeScript compiler
- wiredep injector

### Client-side
- jQuery
- AngularJS
    - ui-router
    - angular-bootstrap
- Twitter Bootstrap (LESS only)

## Future work

You can add a REST API using:
- [friendsofsymfony/rest-bundle](https://packagist.org/packages/friendsofsymfony/rest-bundle)
- [nelmio/api-doc-bundle](https://packagist.org/packages/nelmio/api-doc-bundle) - for auto-generated documentation
- I did not find something for AngularJS yet, although [ngResource](https://github.com/angular/angular.js/tree/master/src/ngResource) looks very suitable for that.

Also WebSockets are very interesting:
- [Ratchet](http://socketo.me/) WebSockets for PHP, looks promising.
- [socket.io](http://socket.io/) - Very easy to use - at least in JavaScript. I did not see how to fit the server-functionality in a SF2-project yet.

## Why did  I want this?

I like Symfony 2, but after I used some JS-based frameworks I found out that:

- :thumbsdown: Composer is very slow when adding requirements, quite annoying when adding stuff like jQuery
- :thumbsdown: Assetic is quite slow
- :thumbsup: Bower and npm are really fast compared to Composer
- :thumbsup: [MVVM](http://en.wikipedia.org/wiki/Model_View_ViewModel) makes your web-application (at least from the users' perspective) faster

Also I really like automating repetitive tasks (I also do love [Chef](http://www.getchef.com/), [Vagrant](http://www.vagrantup.com/)
and that kind of stuff).
So I really like task runners like [Grunt](http://gruntjs.com/).

Thanks to Grunt, its plug-ins it became a lot easier to automate tasks, like compiling [LESS](http://lesscss.org/).
Assetic can do this but using the watch-functionality or the Assetic Controller is a lot slower than using grunt-watch and it has a lot of other
caveats when you have one "main"-stylesheet and include other less-stylesheets.

To summarize, Assetic was giving me headaches so for some SF2 projects I switched to compiling LESS using grunt-contrib-watch a while ago already.

For a new application I considered creating it entirely using a JS-based framework, but especially things like database abstraction do not seem as mature as Doctrine/Propel yet
and I do still really like Symfony 2 itself.

There are quite some posts and slides about integrating Symfony 2 and Angular, Ember but they were mostly behind on the very good packages and bundles around at this moment.

I intend this example project as inspiration for others, wanting to use the best of both worlds.
