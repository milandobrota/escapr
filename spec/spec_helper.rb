ENV['RAILS_ENV'] = 'test'
ENV['RAILS_ROOT'] ||= File.dirname(__FILE__) + '/../../../..'

require 'spec'
require File.expand_path(File.join(ENV['RAILS_ROOT'], 'config/environment.rb'))

