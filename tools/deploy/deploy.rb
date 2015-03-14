set :application, "ecp-3a-motivation-generator"
set :repo_url, "git@github.com:sghribi/#{fetch(:application)}"
set :npm_flags, ''
set :log_level, :info
set :scm, :git
set :git_strategy, Capistrano::Git::SubmoduleStrategy
set :git_keep_meta, true
set :branch, ENV['branch'] || "master"

set :shared_files,        ["tools/build/config/config.json"]
set :shared_children,     ["node_modules", "bower_components"]
set :linked_dirs,         fetch(:shared_children)
set :linked_files,        fetch(:shared_files)

set :default_environment, {
  "NODE_ENV" => "prod-ghribi",
  "PATH" => "node_modules/.bin:$PATH" # add node_modules to PATH for convenience
}

namespace :deploy do
  desc "Restart application"

  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
    end
  end

  after :publishing, :restart
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
    end
  end
end
