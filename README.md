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

# Commit 1 (Rails new)
* `git init`
* create a new rails app
* add rails-spec gem
* use sqlite as database

# Commit 2 (generate House Scaffold)
* generate house scaffold
* make sure all crud actions work

# Commit 3 (generate resident scaffold)
* generate resident scaffold
* needs to be nested resource of houses

# Bonus points
* Capybara Tests
* 100% Test Coverage