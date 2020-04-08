#
# Cookbook:: chef_python_environment
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
  action :upgrade
end

python_runtime '3'

pip_requirements '/home/ubuntu/Python_Environment_Project/Starter_Code/requirements.txt'
