#!/usr/bin/env ruby

require 'homebus'

require_relative './app'
require_relative './options'

lunar_phase_app_options = LunarPhaseHomebusAppOptions.new

lunar_phase_app = LunarPhaseHomebusApp.new lunar_phase_app_options.options
lunar_phase_app.run!
