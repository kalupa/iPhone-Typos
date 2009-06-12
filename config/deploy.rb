set :application, "iphonetypos.com"

server "iphonetypos.com", :app, :web, :db, :primary => true

set :deploy_to,   "/home/paul/public_html/iphonetypos.com/rails_app"

set :use_sudo,    false

set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache
set :scm_verbose, true
set :git_enable_submodules, 1
set :repository,  "git@github.com:kalupa/iPhone-Typos.git"

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
end

namespace :gems do
  desc "Install gems"
  task :install, :roles => :app do
    run "cd #{current_path} && rake RAILS_ENV=production gems:install"
  end
end

