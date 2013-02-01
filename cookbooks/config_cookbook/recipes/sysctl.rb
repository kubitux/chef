template "/etc/sysctl.conf" do
        source "sysctl.erb"
        mode 0644
        owner "root"
        group "root"
	action :create
end
