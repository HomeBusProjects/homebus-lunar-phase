require 'homebus/options'

require 'homebus-lunar-phase/version'

class HomebusLunarPhase::Options < Homebus::Options
  def app_options(op)
  end

  def banner
    'HomeBus Lunar Phase publisher'
  end

  def version
    HomebusLunarPhase::VERSION
  end

  def name
    'homebus-lunar-phase'
  end
end
