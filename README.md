# TRIVIA README

A Ruby application build on top of the Rails framework for fun and learning.

## Decisions
```
An explaination of some choices made during this project
```
1. Will not use Front-End or Single Page Application (SPA) Framework for initial development
  * In the interest of learning Rails MVC, this application will not be using a front-end framework as
  I believe it to be more important to show competancy in Ruby, Rails and Cofeescript.  If I am able to 
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

4. Architectural Consideration - ?
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
  * If possible I will setup some very basic build automation to build and deploy a container
  to a very underpowered and overworked bare-metal Ubuntu server which lives in my home office closet

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

* Configuration

* Database creation

TBD.  MongoDB

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
  
  - Continuous Integration/Deployment via Jenkins

* ...
