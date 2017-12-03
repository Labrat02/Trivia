# TRIVIA README

A Ruby application build on top of the Rails framework for fun and learning.

## Decisions
```
An explanation of some choices made during this project
```
1. Will not use Front-End or Single Page Application (SPA) Framework for initial development
  * In the interest of learning Rails MVC, this application will not be using a front-end framework as
  I believe it to be more important to show competency in Ruby, Rails and Cofeescript.  If I am able to 
  meet other goals then I would consider AngularJS or Angular / TypeScript which I have more familiarity 
  with or React (JSX/TSX) which I am less familiar with but have recently started building a new website 
  using Dotnet Core 2, React/TypeScript/Redux.

2. Docker Containerization
  * I believe it is a good and important objective to allow developers to build and test in identical 
  environments.  I believe that getting debuggers working inside a local container mounted to the app
  folder would be an ideal way to build an application while allowing developers their choice of OS on
  their workstation.

3. DX - Visual Studio Code as choice IDE
  * I believe this to be a great cross-platform option and as it has a lot of support for languages
  such as Ruby as well as many choices of integration for various linting tools, debuggers, container
  management and other features it should offer a very clean flow for development.
  * Familiarity with this tool is also an obvious choice for me

4. Database Considerations - MongoDB
  * Sqlite 3 - uses the ActiveRecord ORM and is default to Rails, I would like to gain experience using
  ActiveRecord and DB migrations, however it is less of a priority considering I have extensive experience
  with similar RDMS and ORM's which also use the concept of migrations.
  * MongoDB - Being Object based rather than relational may present issues with ActiveRecord, however
  this seems like a popular choice for Ruby and I favor using this database because I have worked with it
  in the past but can benefit from more experience.
   - Mongoid vs MongoMapper - These seem to be the 2 front runners for an ORM'ish database connector in 
   Ruby applications.  I have decided to try Mongoid, primarily because I am hearing that it has better
   performance over MongoMapper.

5. Architectural Consideration - ?
  * Containers
    * MongoDB - Store data related to users
  - Message Queue Based
    - Supporting Services
      - RabbitMQ
    - Backend
      - Cache/Session (MongoDB or Redis)
      - Data Layer (Mongo)
      - API Endpoints (Separate Read/Writes ?) - Allow scaling individual C[R]UD
    - Middle/Front
      - SPA
        - Business / Logic
        - Application Layer
        - Presentation (SPA)        
      - MVC
        - Application Layer - Communicates with Business/Data
        - Presentation

5. Jenkins CI
  * After succeeding in setting up a new instance of Jenkins and build agents which are
  working well with Docker commands on my server, I decided to implement a CI environment
  which will automatically deploy changes from GitHub to my home server.

6. Session, Cache & Http Cache
  * To support these features, while allowing the possibility of switching users and/or 
  caching across multiple load balanced nodes, I would like to setup Redis and a gem
  to serve as middleware for these features.

7. Bootstrap
  * For simple reasons of speed and efficiency
  

## Goals & Tasks

* Scaffold a basic, working rails application - Done
* Configure tools & workspace for a happier development experience - InProgress
  * IDE (VSCode) - Done
  * Debugger (?)
  * Local Dev Environment (Docker)
* Model & Data Schema
  * User
  * TBD
* Create Controllers
  * Welcome/Home
  * Register
  * Login
  * TBD
  * TBD
  * TBD

## Implementation Details

* *System dependencies*
  * Docker version 17.09.0-ce, build afdb6d4
  * Ruby: 2.3.3p222 (2016-11-21 revision 56859) [i386-mingw32]
  * Rails: 5.1.4
  * Bundler: 1.16.0

* *User Authentication*
  * Devise Gem Information: https://suvankar.svbtle.com/devise-and-mongoid-in-rails-4

* Configuration

* Database: MongoDB 
  * Mongoid https://docs.mongodb.com/mongoid/master/

* How to run the test suite
  * TBD

* Services (job queues, cache servers, search engines, etc.)

  * Redis?
  * Session, Cache, HttpCache

* Deployment instructions
  
  - Continuous Integration/Deployment via Jenkins
  
  - Docker Local Development Environment
  - ...

* ...
