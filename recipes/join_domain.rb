#
# Cookbook Name:: active_directory
# Recipe:: join_domain.rb
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

domain_item = data_bag_item('active_directory', 'domain')
Chef::Log.info("domain_item = #{domain_item.to_json}")

domain_join domain_item['domain_name'] do
  domain domain_item['domain_name']
  domain_user domain_item['domain_user']
  domain_password domain_item['domain_password']
  ou domain_item['ou']
end
