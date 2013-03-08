#
# Cookbook Name:: app_coins
# Recipe:: default
#
# Copyright 2013, vindimy@gmail.com
#
# All rights reserved - Do Not Redistribute
#

application "web-1" do
  path "/apps/app_coins"
  owner "root"
  group "root"

  repository "https://github.com/vindimy/app_coins.git"
  revision node.chef_environment == "production" ? "tag1" : "HEAD"

  # Apply the rails LWRP from application_ruby
  rails do
    # Rails-specific configuration. See the README in the
    # application_ruby cookbook for more information.
  end

  # Apply the passenger_apache2 LWRP, also from application_ruby
  passenger_apache2 do
    # Passenger-specific configuration.
  end
end
