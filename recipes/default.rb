#
# Cookbook Name:: active_directory
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe '::update_dns'
include_recipe '::join_domain'
