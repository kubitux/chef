template "/etc/sysctl.conf" do
        source "sysctl.erb"
        mode 0644
        owner "root"
        group "root"
	action :create_if_missing
end

execute "modprobe" do
  command "modprobe ip_conntrack"
  action :run
end

execute "sysctl" do
  command "sysctl -p"
  action :run
end
