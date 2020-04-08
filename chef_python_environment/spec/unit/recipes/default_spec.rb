#
# Cookbook:: chef_python_environment
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef_python_environment::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install python3' do
      expect(chef_run).to install_package 'python3'
    end

    it 'should install pip' do
      expect(chef_run).to install_package 'pip'
    end

    it 'successfully installs requirements' do
      expect(chef_run).to install_pip_package('pytest')
    end
  end
end
