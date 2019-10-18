# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



**Rails version:** 6.0.0
**Generated with**: 
`rails new rails_react_recipe -d=mysql -T --webpack=react --skip-coffee`
	

- The `**-d**` flag specifies the preferred database engine, which in this case is MySql.
- The `**-T**` flag instructs Rails to skip the generation of test files. I dont go to use tests in this code. This command is also suggested if you want to use a Ruby testing tool different from the one Rails provides.
- The `**--webpack**` instructs Rails to preconfigure for JavaScript with the webpack bundler, in this case specifically for a React application.
- The `**--skip-coffee**` asks Rails not to set up CoffeeScript, which is not needed for this tutorial.

**Frontend Dependencies**
- **React Router**, for handling navigation in a React application.
- **Bootstrap**, for styling your front-end components.
- **jQuery** and **Popper*, for working with Bootstrap.
`yarn add react-router-dom bootstrap jquery popper.js`

**Recipes Controller creation**
`rails generate controller api/v1/Recipes index create show destroy -j=false -y=false --skip-template-engine --no-helper`
- `-j=false` which instructs Rails to skip generating associated JavaScript files
- `-y=false` which instructs Rails to skip generating associated stylesheet files.
- `--skip-template-engine` which instructs Rails to skip generating Rails view files, since React is handling our front-end needs.
- `--no-helper` which instructs Rails to skip generating a helper file for our controller


