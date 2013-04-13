#
# Cookbook Name:: app_tipbot
# Recipe:: httpd
#
# Copyright 2013, vindimy@gmail.com
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"

node[:app_tipbot][:packages].each do |pkg|
  package pkg do
    action :install
  end
end

web_app "my_site" do
  server_name node['hostname']
  server_aliases [node['fqdn']]
  docroot "/var/www/my_site"
end
