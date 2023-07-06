#! /bin/bash -l

cd ${APP_HOME} # Which has been loaded by the env.
bundle exec rake myapp:dosomething
