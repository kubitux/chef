#
# Cookbook Name:: ssh_authorized_keys
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/tmp/authorized_keys" do
	source "authorized_keys.erb"
	variables :keys => node['keys']
	action :create
end
