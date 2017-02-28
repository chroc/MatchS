# This file is used by Rack-based servers to start the application.
require './server'
require_relative 'config/environment'

run Rails.application
