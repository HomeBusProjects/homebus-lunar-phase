#!/usr/bin/env ruby

require 'homebus'

require 'astro/moon'

class HomebusLunarPhase::App < Homebus::App
  DDC_LUNAR_PHASE = 'org.homebus.experimental.lunar-phase'

  def initialize(options)
    @options = options
    super
  end

  def update_interval
    24 * 60 * 60
  end

  def setup!
    @device = Homebus::Device.new name: 'Lunar phase',
                                  manufacturer: 'Homebus',
                                  model: 'Lunar phase publisher',
                                  serial_number: 'the moon'
  end

  def work!
    # https://www.rubydoc.info/gems/astro_moon/0.2/Astro/Moon
    results = {
      phase: Astro::Moon.phase.phase * 100,
      illumination: Astro::Moon.phase.illumination,
      lunar_distance: Astro::Moon.phase.distance,
      lunar_angle: Astro::Moon.phase.angle,
      next_new_moon: (Astro::Moon.phasehunt.moon_full + 29.53058868/2).to_time.to_i,
      next_full_moon: Astro::Moon.phasehunt.moon_full.to_time.to_i
    }

    if options[:verbose]
      pp results
    end

    @device.publish! DDC_LUNAR_PHASE, results

    sleep update_interval
  end

  def name
    'Lunar phase'
  end

  def publishes
    [ DDC_LUNAR_PHASE ]
  end

  def devices
    [ @device ]
  end
end
