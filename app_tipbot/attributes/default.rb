default[:app_tipbot][:packages] = ["php5-mcrypt"]
default[:app_tipbot][:ruby_gems] = ["mysql"]
default[:app_tipbot][:ruby_packages] = ["rake"]
default[:app_tipbot][:python_pips] = ["praw", "sqlalchemy", "mysql-python", "pyyaml"]
default[:app_tipbot][:firewall_rules] = [ 
  {:name => "ssh", :port => 22, :protocol => :tcp, :source => nil},
  {:name => "http", :port => 80, :protocol => :tcp, :source => nil},
  {:name => "https", :port => 443, :protocol => :tcp, :source => nil} ]
