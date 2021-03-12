# `Volunteer Tracker`
#### *_Created By: David Couch_*

#### *Track Volunteers From *
* * *

## `Description`
This is an app made to take advantage of sql and REST routing technologies. This is a week three project while attending school at Epicodus. This app uses Sinatra REST routing to navigate through the website and use parameters to query a postgres server.
* * *

## `Technologies used`

* `Ruby`
* `Rspec`
* `Sinatra`
* `Capybara`
* `PostgresSQL`

* * *

## `Installation :`

* Go to ( {http repo} ).
* Navigate to the code button on the github website.

* Click on the code button to open the menu.

- Copy the HTTPS code by clicking the clipboard next to the link.

- Within your Bash terminal navigate to your desired location by using cd followed by your desired directory.

```bash
 cd Desktop
```

- Once you have chosen your desired directory use the command.
```bash
git clone {repo}
```

<div
  style="
    background-color: #d1ecf1;
    color: grey; padding: 6px;
    font-size: 9px;
    border-radius: 5px;
    border: 1px solid #d4ecf1;
    margin-bottom: 12px"
>
  <span
    style="
      font-size: 12px;
      font-weight: 600;
      color: #0c5460;"
  >
    ⓘ
  </span>
  <span
    style="
      font-size: 12px;
      font-weight: 900;
      color: #0c5460;
      margin-bottom: 24px"
  >
    Note :
  </span>
  If you have any problems make sure your HTTPS code is correct! The example above might not be the most recent HTTPS code!
</div>


* Then after the process is completed use the command.

``` bash
code .
```

* Then type

``` bash
gem install bundler

```
* then type

``` bash
bundle install
```

* Then from the terminal you can run logical code through the terminal by typing
```bash
ruby "file goes here (no quotes)"
```
## `Postgres setup`

* Please view <a href="https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-postgres"> the Epicodus website </a> for setup instructions.
* Here are some Postgres commands to make your server
```bash
	CREATE DATABASE =>         >
	DROP DATABASE   => (db)    >
	CREATE TABLE    => (table) > (name type, ...);
	ALTER TABLE     => (table) > ADD name type;
	INSERT INTO     => (table) > (name, ...) VALUES (name, ...);
	ALTER TABLE     => (table) > ADD id serial PRIMARY KEY;
	ALTER TABLE     => (table) > DROP (name);
	SELECT * FROM   => (table) >
	UPDATE          => (table) > SET (name) = 'data', (name) = 'data' WHERE (conditional)
	SELECT * FROM   => (table) > WHERE (name) BETWEEN (num) AND (num);
	SELECT * FROM   => (table) > WHERE (name) > 2 AND (name) < 3;
	CREATE DATABASE => (table_test) > WITH TEMPLATE (table);
```
* Note: Its recommended to create a test database. Please see the line above for how its done.

### `Recommended Table Names`
```bash
  Production Database: volunteer_tracker
  Development Database: volunteer_tracker_test
```
### `Useful commands`
```bash
	\?  => list of commands
	 q  => exit from menu
	\c  => change directory (database)
	\d  => list table information
	\dt => list all tables
	 %  => represents a wild card 'Li%' the percent has any value
	\x  => change orientation
```

#### `These Tables`
* Commands for the server made in this app
```bash
  CREATE TABLE projects (title varchar, id serial PRIMARY KEY)
  CREATE TABLE volunteers (name varchar , project_id int, id serial PRIMARY KEY)
```
## `Testing`
* This project was created using **test-driven development** (TDD).

* To view the test suite, open PLACEHOLDER

* To run the test suite yourself and verify program functionality

```bash
rspec
```

* If there is a problem in the code the testing suite will read as such :

<div>
  <img src="public/img/rspec-f2.PNG" alt="Failing RSpec test">
</div>

* Follow the examples and read the English that describes what the function should do. If everything is in order you should receive back :
<div>
  <img src="public/img/rspec-p.PNG" alt="Passing RSpec test">
</div>

## `Addition comments:`
* Created on 8/16/21


* * *

## `Contact Information`
_David Couch: [Email](dcouch440@gmail.com)_
* * *

## `License`
> [GPLv3](https://choosealicense.com/licenses/gpl-3.0/)\
> David Couch &copy; 2021
* * *
