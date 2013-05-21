include_recipe "python"

node[:app_tipbot][:python_pips].each do |pip|
  python_pip pip do
    action :install
  end
end
