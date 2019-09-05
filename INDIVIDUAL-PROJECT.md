# Individual Project Guidelines

## High Level Steps

## Mentor Actionable Items

1. create Github repository and project

   Note: The student must provide the mentor with the project name.

2. create a Rails Project

   ```text
   rails new project-name -T -d postgresql
   ```

3. add `rails-rspec` with the version information to the `development and test` section of `Gemfile`
   a. bundle and configure

4. add `capybara` with the version information to the `development abd test` section of `Gemfile`
   a. bundle and configure

5. add a controller called `HomesController` with a single action called `index`

6. add an `index.html.erb` view for your `HomesController`

7. add a root route called `home#index` to your `routes.rb` file

## Student Actionable Items

8. enter all user stories within Github project

   a) convert each Github note to a Github issue

   b) add a task-list for each Github issue

   Note: https://www.mountaingoatsoftware.com/agile/user-stories

9. for each user-story in user-stories

   a) move the user-story into `in progress` on Github Project

   b) create a feature branch for the user story

   c) implement the user-story using TDD

   d) submit a pull-request (PR) with issue(s) implemented for review

   e) if PR is approved, mentor will merge into `master` branch and update Heroku application. The student will deploy to Heroku and go to (9a). Otherwise, go back to step (9c)

   Note: FYI, if the user story is `As a user, I can create a widget`, then one can create a branch something similar by doing the following:

   e.g.

   ```bash
   git checkout master
   git checkout -b user-creates-widget origin/master
   ```

   Next, one can use the following command to create the corresponding feature spec file as follows:

   e.g.

   ```bash
   rails g rspec:feature user_creates_widget
   ```

10. create a project video and it should contain the following:

    a) student's full name

    b) project's name

    b) project overview

    c) demonstration

## Have Questions

If you have any question(s), please do send me a message via Slack.
