set :deploy_config_path, 'tools/deploy/deploy.rb'
set :stage_config_path, 'tools/deploy/stages'

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/npm'
require 'capistrano/git-submodule-strategy'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
