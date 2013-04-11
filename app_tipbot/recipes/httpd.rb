#
# Cookbook Name:: app_tipbot
# Recipe:: default
#
# Copyright 2013, vindimy@gmail.com
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"

web_app "my_site" do
  server_name node['hostname']
  server_aliases [node['fqdn']]
  docroot "/var/www/my_site"
end
