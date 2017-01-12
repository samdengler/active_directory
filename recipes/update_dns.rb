#
# Cookbook Name:: active_directory
# Recipe:: update_dns
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

default_interface = node['network']['default_interface']
instance = node['network']['interfaces'][default_interface]['instance']
Chef::Log.info("instance = #{instance.to_json}")

domain_item = data_bag_item('active_directory', 'domain')
Chef::Log.info("domain_item = #{domain_item.to_json}")
Chef::Log.info("domain_item['dns'] = #{domain_item['dns'].to_json}")

network_interface 'Ethernet' do
  index instance['index']
  dns domain_item['dns']
end
