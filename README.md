#DevOps Test

This is a fairly straightforward exercise that hopefully shows us that you're comfortable with setting up servers and software using configuration management software. You'll be setting up a CentOS Linux box with MySQL, Ruby, and running a very simple Rails app that requires a web server to proxy requests through, and providing us thorough documentation so we can recreate the steps you took to get the application working. You have 48 hours to send us your solution from when we send you this test.

##Instructions

 1. We will be testing everything on using a VM created by Vagrant 1.6.3. This repo includes a sample Vagrantfile that you can use to get started. Start with a CentOS 6.5 image:

  `vagrant box add "devopstest" https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box`

  (this is the URL to the image specified in the Vagrantfile)

 2. Install and set up your configuration system of choice (Puppet / Chef / Ansible / Salt, etc)

 3. Use your CM to:
 
    * Install MySQL (version 5.x is fine)
    * Create a database 'devopstest' and a user 'devops' (password: devopspass) with full access to that database
    * Install Ruby (ruby-2.0.0-p353)
    * Clone this git repo to an appropriate location
    * Make sure the database connection in `config/database.yml` is correct
    * Prepare the Rails app by running `bundle install`
    * Migrate the database by running `bundle exec rake db:migrate`
    * Seed the database by running `bundle exec rake db:seed`
    * Start Rails (`bundle exec rails s` - no need to set up Passenger / Unicorn / etc unless you want to - bundle exec rails server with WEBrick is fine)
    * Use either Apache or Nginx to proxy requests from port 80 to port 3000 where the Rails server is listening
    * Ensure that MySQL and the Rails application start up on boot
    * Ensure that pointing a browser to http://{{host}}/users displays a list of fake users that can be edited or deleted with no errors.

Finally, you will need to provide us with the documentation and any necessary code to get from steps 1 to 3 on our test VM. Good luck!
