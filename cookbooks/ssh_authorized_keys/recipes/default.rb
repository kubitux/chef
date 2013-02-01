#
# Cookbook Name:: ssh_authorized_keys
# Recipe:: default
# All rights reserved - Do Not Redistribute
template "/root/.ssh/authorized_keys" do
	source "ssh_authorized_keys.erb"
	mode 0644
	owner "root"
	group "root"
	variables :ssh_keys => node['all_keys']
	action :create
end
