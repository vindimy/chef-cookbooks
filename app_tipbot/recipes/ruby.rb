#
# Cookbook Name:: app_tipbot
# Recipe:: ruby
#
# Copyright 2013, vindimy@gmail.com
#
# All rights reserved - Do Not Redistribute
#

include_recipe "ruby"

node[:app_tipbot][:gems].each do |gem|
  r = gem_package gem do
    action :nothing
  end
  r.run_action(:install)
end
