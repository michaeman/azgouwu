# README

## Installation

* $ Install postgres from http://postgresapp.com/
* $ start up postgres server from the app just installed
* $ git clone https://github.com/hexinpeter/Lecong.git
* $ cd Lecong
* $ bundle install
* $ rake db:create (make sure you have Postgres server running)



## Git Flow

* Always start a new branch from Master
* When the feature is done, push it to Github, and create a pull request
* Ask someone to review your code, and merge with master


## Deploy in Heroku

#### Deploy to Staging
* You may deploy as often as you'd like to Staging, no permissions required
* Set up your Heroku Staging by `heroku git:remote -a lecong-staging -r staging`
* Switch to your Staging branch `git checkout staging`
* Merge your branch `git merge <your_branch>`
* Deploy your code by `git push staging staging:master`
* Open the website by `Heroku open --app lecong-staging`

#### Deploy to Production
* When everything works as expected in Dev and Staging
* Check your code quality
* Create a pull request in Github
* Get Tae or Peter to do the deployment


## Troubleshooting

If `rake db:create` having error with

    could not connect to server: No such file or directory
    Is the server running locally and accepting
    connections on Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?

try this http://jaygoldman.com/2012/11/fixing-postgres-connection-errors-on-mountain-lion/


