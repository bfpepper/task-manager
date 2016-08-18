require 'sqlite3'

database = SQLite3::Database.new("db/task_manager_development.db")

#Delete existing records from the tasks table before inserting these new records; we'll start from scratch.
database.execute("DELETE FROM tasks")

# Insert records.
database.execute("INSERT INTO tasks
                  (title, description)
                  VALUES
                    ('Do homework', 'it makes you smart'),
                    ('Read', 'Got to have more knowledge'),
                    ('Test stuff', 'To make sure shits not broken');"
                )

# verifying that our SQL INSERT statement worked
puts "It worked and:"
p database.execute("SELECT * FROM tasks;")
