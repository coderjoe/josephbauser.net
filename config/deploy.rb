require "bundler/capistrano"

set :user, 'coderjoe'
set :domain, 'josephbauser.net'
set :project, 'josephbauser.net'

set :application, "josephbauser.net"
set :applicationdir, "/home/#{user}/#{application}/"

set :scm, 'git'
set :repository,  "git://github.com/coderjoe/josephbauser.net.git"
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true

role :web, domain                         # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

#deploy config
set :deploy_to, applicationdir
set :deploy_via, :remote_cache
set :use_sudo, false

namespace :symlink do
  desc "Link keys.yml files to the release config directory"
  task :keys_yml, :roles => :app, :except => {:no_release => true} do
    run "ln -nfs #{shared_path}/config/keys.yml #{release_path}/config/keys.yml"
  end
end

after "deploy:finalize_update", "symlink:keys_yml"

#default_environment['PATH']="/usr/lib/ruby/gems/1.8/bin:/home/#{user}/.gems/bin:/usr/local/bin:/usr/bin:/bin"
#default_environment['GEM_PATH']="/home/#{user}/.gems:/usr/lib/ruby/gems/1.8"
