# Build a Simple rails app using scaffolds

## Model Design
```
House
  Date Built (date)
  Address (string)
  City (string)
  Active (boolean)

Resident
  Belongs to (House)
  Full Name (string)
  Date of Birth (date)
  ID Number (string)
  Room Number (integer)
```

### Commit 1 (generate House Scaffold)
* generate house scaffold
* make sure all crud actions work
* '/' should go to houses list page, ie set root in routes.rb

### Commit 2 (generate resident scaffold)
* generate resident scaffold
* make sure all crud actions work
* form should allow you to select a house that the resident belongs to
do not nest resident scaffold inside houses resource

### Commit 3 (list house residents)
Add a link on house list page that takes you to a list page of all the residents of that house.

# Bonus points
* Capybara Tests
* 100% Test Coverage