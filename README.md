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

* Go to ( https://github.com/dcouch440/volunteer-tracker ).
* Navigate to the code button on the github website.

* Click on the code button to open the menu.

- Copy the HTTPS code by clicking the clipboard next to the link.

- Within your Bash terminal navigate to your desired location by using cd followed by your desired directory.

```bash
 cd Desktop
```

- Once you have chosen your desired directory use the command.
```bash
git clone https://github.com/dcouch440/volunteer-tracker.git
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
## `Postgres Setup`

* Please view <a href="https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-postgres"> the Epicodus website </a> for setup instructions.
* Here are some Postgres commands to make your server
```

	CREATE DATABASE =>       >
	DROP DATABASE   => db    >
	CREATE TABLE    => table > (name type, ...);
	ALTER TABLE     => table > ADD name type;
	INSERT INTO     => table > (name, ...) VALUES (name, ...);
	ALTER TABLE     => table > ADD id serial PRIMARY KEY;
	ALTER TABLE     => table > DROP name;
	SELECT * FROM   => table >
	UPDATE          => table > SET name = 'data', name = 'data' WHERE conditional
	SELECT * FROM   => table > WHERE name BETWEEN num AND num;
	SELECT * FROM   => table > WHERE name > 2 AND name < 3;
	CREATE DATABASE => table_test > WITH TEMPLATE table;

```
* Note: Its recommended to create a test database. Please see the line above for how its done.

### `Recommended Table Names`
```bash

  Production Database: volunteer_tracker
  Development Database: volunteer_tracker_test

```

### `Useful Commands`

```

	\?  => list of commands
	 q  => exit from menu
	\c  => change directory (database)
	\d  => list table information
	\dt => list all tables
	 %  => represents a wild card 'Li%' the percent has any value
	\x  => change orientation

```

#### `Commands For This Apps Tables`
```bash

  CREATE TABLE projects (title varchar, id serial PRIMARY KEY)
  CREATE TABLE volunteers (name varchar , project_id int, id serial PRIMARY KEY)

```

### `Database Conventions`
From <a href="https://www.learnhowtoprogram.com/ruby-and-rails/ruby-database-basics/database-naming-conventions-review"> Epicodus </a>
```

- All names (databases, tables, columns, etc.) should be in lowercase.

- Table names should always be plural. For example, we'd name a table tasks, not task.

- Names with multiple words are separated by an underscore. For example, date_of_birth is the correct syntax, not dateofbirth.
  Make sure to avoid dashes as well as they will cause errors.

- If a join table doesn't have any meaning besides just joining two tables, use table_a_table_b with the names in alphabetical order.
  Example: cuisines_restaurants would be a join table for the table cuisines and restaurants.

- If the table has meaning besides just joining the table, use a name that describes the relationship.
  Example: visits would be a good name for a join table that joins together a table called people and a table called places.

- If you add in a foreign key to your table (i.e. the column list_id into the tasks table),
  the foreign key is a singularized version of the table it represents. For example, list_id not lists_id.

```

#### `What Makes Up An A.C.I.D Database?`
From <a href="https://www.learnhowtoprogram.com/ruby-and-rails/ruby-database-basics/acid-databases "> Epicodus</a>
```

A SQL database must have all of the following:

Atomicity: Just as an atom is undividable, the same must be true about a SQL database transaction.
In other words, a transaction must either completely succeed or completely fail.
For instance, if we were to make a query to return all of the Albums from our database, we would expect all results to be returned, not just most of them.
If our database cannot return every result, then the query should fail. After all, our database wouldn't be very reliable if it only gave us some of
the information we needed.

Consistency: A SQL database must be consistent. This simply means that a database must always be in a valid state.
In order to enforce this, any data we add to our database must be valid according to the constraints imposed by our database.
A SQL database will enforce consistency by rejecting invalid transactions.

Isolation: In a large database, there can be many transactions happening all at once or at different times.
The principle of isolation states that regardless of how these transactions occur, the database will ultimately be in the same state after the
transactions are complete.
This may sound complicated, but it just means that SQL databases have to handle concurrency. We also have to handle concurrency as programmers, such as when we're working with API calls in
JavaScript.

At the strictest level of isolation, this means there can only be one copy of a database on one server.
Otherwise, we could have a database distributed across multiple servers and each part of the database could be in a different state.
Here's an example. Imagine two users on opposite ends of the world using an application with only one database server.
User one makes an update to an Album (now it's sold out!) while user two wants to view that Album and see if it's available.
These transactions will occur in the order they reach the database and the data will remain reliable.

Now imagine that the application has two database servers. Only one of the servers can be updated at a time.
If the second user's query hits the second database, they may be accessing data that is different from the data on the first server.
This is called a dirty read and it violates the principle of isolation.

Isolation is extremely important for the reliability of a database. However, with larger databases isolation leads to a decline in performance.
For that reason, it's common for this principle to be relaxed to improve performance.

Ultimately, there are many levels of isolation leading to various tradeoffs in reliability and performance.

Durability: Once a database transaction is complete, it remains complete.Data cannot be erased or changed without further transactions.
This just means that SQL databases must retain their data even in the case of potential issues such as outages or power failures.
For this reason, data is generally recorded in non-volatile memory, which does not need constant power like volatile memory does.

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
