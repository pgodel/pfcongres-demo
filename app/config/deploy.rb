set :application, "demo"
set :domain,      "demo.servergrove.com"
set :deploy_to,   "/var/www/vhosts/demo.servergrove.com"
set :app_path,    "app"

set :user,        "deployer"
ssh_options[:port] = 22123
ssh_options[:forward_agent] = true

set :use_sudo,    false

set :repository,  "#{domain}:/var/repos/#{application}.git"
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain                         # This may be the same as your `Web` server
role :db,         domain, :primary => true       # This is where Symfony2 migrations will run

set  :keep_releases,  3

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL