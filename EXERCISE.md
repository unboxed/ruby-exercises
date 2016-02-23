# Add Filter Form to user index page

Do this exercise without using any additional gems

## Commit 1
```
bin/setup # this will bundle install for you as well
bin/rails s -b 0.0.0.0
# visit http://localhost:3000 and you should see the users list page
git commit --allow-empty -m "Commit 1 Done" # allow-empty because there will be no files to add but it shows your have finished the task
```

## Commit 2 (active filter)

* add a form to users/index.html.erb
* add a checkbox to the form
* when you submit the form and the checkbox is checked it shows only active users
* when you submit the form and the checkbox is unchecked it shows only all users
* git add changed files and git commit with message "Commit 2 Done"

## Commit 3 (born after filter)

* add a select field to the form in users/index.html.erb
* the select field has years starting from 1930 until present
* when you submit the form is only shows users born after the selected year
* you should be able to use both the year select drop down and the active users checkbox at the same time
* git add changed files and git commit with message "Commit 3 Done"