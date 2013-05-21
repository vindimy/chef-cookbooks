#
# Cookbook Name:: app_tipbot
# Recipe:: ruby
#
# Copyright 2013, vindimy@gmail.com
#
# All rights reserved - Do Not Redistribute
#

include_recipe "ruby"

node[:app_tipbot][:ruby_gems].each do |gem|
  r = gem_package gem do
    action :nothing
  end
  r.run_action(:install)
end

node[:app_tipbot][:ruby_packages].each do |pkg|
  package pkg do
    action :install
  end
end
