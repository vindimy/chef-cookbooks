include_recipe "firewall"

package "ufw" do
  action :install
end

node[:app_tipbot][:firewall_rules].each do |rule|
  firewall_rule rule[:name] do
    port rule[:port]
    protocol rule[:protocol]
    if rule[:source]
      source rule[:source]
    end
    action :allow
    notifies :enable, "firewall[ufw]"
  end
end

firewall "ufw" do
  action :nothing
end
