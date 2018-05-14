## server
server 'piotr-cytryniak-temporary-server.development.devguru.co', user: 'deploy', roles: %w(app db web)

## git branch 
set :branch, 'master'

## dockerfile
set :dockerfile, -> { 'docker/Dockerfile.production' }

## capose built
set :capose_commands, -> {
  [
    'build',
    'run --rm web bundle exec rake assets:precompile',
    'run --rm web bundle exec rake db:create',
    'run --rm web bundle exec rake db:migrate',
    'up -d',
  ]
}