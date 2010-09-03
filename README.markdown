Port-a-Query
==========
One of the things that sucks about SQL is that every databse has a different implementation of SQL.

Port-a-Query is designed to make writing portable SQL queries a bit easier by providing simple helper methods that product the right SQL for your environment.

*This project is just something I work on as I need it and it's not meant to be a comprehensize solution. If there's something you'd like added just put in a feature request or send me a patch.* 

Example
=======
In port-a-query symbols are treated as identifiers (table names, column names, etc.). Strings will be treated as literal strings. 

For example the following code

    PortAQuery.concat(:first_name, ' ', :last_name)

will produce the following SQL.

__MySQL__
    "first_name"||' '||"last_name"
    
__SQLite__
    CONCAT(`first_name`,' ',`last_name`)

Tips
====
-   Port-a-Query is a [Ruby on Rails](http://rubyonrails.org) specific gem that uses the database adapter defined by the current environment. There is no method for manually changing the adapter at the moment.    

Supported Databases
===================
-   [MySQL](http://mysql.com)
-   [SQLite](http://sqlite.org)

Supported Expressions
=====================
    PortAQuery.concat()
    PortAQuery.quote_string()
    PortAQuery.quote_identifier()

Copyright (c) 2010 Adam Crownoble, released under the MIT license
