
# config valid only for current version of Capistrano
lock '3.8.1'

# application name
set :application, 'threeComponentApp'

# git
set :repo_url, 'git@github.com/LemonPL/ThreeComponentApp.git'

# target dir
set :deploy_to, "/home/deploy/apps/#{fetch(:application)}"