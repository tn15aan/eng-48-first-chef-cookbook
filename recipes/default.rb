#
# Cookbook:: node_sample
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

#imports of recipes
include_recipe 'nodejs'

include_recipe 'apt'


#npm installs
nodejs_npm 'pm2'

#packages apt-get
apt_update
package 'nginx'

#services
service 'nginx' do
  action [:start, :enable]
end
