# ruby-exercises

Place to store various Ruby and Rails exercises

* The Goal is not to finish the exercises but to do it right
* Set aside 1 hour to do this
* Do as much as you can in 1 hour but don't rush yourself
* Following the instruction on when you should commit
* Create a pull request when you are done.
* Post you pull request in the slack room

# Getting Started (Do this before attemping any exercises)

Make sure to fork this repo to your local account.

You can follow `Fork an example repository`, `Keep your fork synced` at the [github help](https://help.github.com/articles/fork-a-repo/#fork-an-example-repository)
but instead of `octocat/Spoon-Knife` use `unboxed/ruby-exercises`.

# General Flow

```
  git checkout master
  git fetch upstream
  git checkout -b [exercise_name] --set-upstream-to origin/[exercise_name]
  git merge upstream/[exercise_name]
  git commit --allow-empty -m "Starting"
  # Follow EXERCISE.md
```

do `rails-getting-started` exercise first to test the flow

```
  git checkout master
  git fetch upstream
  git checkout -b rails-getting-started --set-upstream-to origin/rails-getting-started
  git merge upstream/rails-getting-started
  git commit --allow-empty -m "Starting"
  # Follow EXERCISE.md
```