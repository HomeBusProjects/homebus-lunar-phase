# homebus-lunar-phase

This is a simple HomeBus data source which publishes the current phase and brightness of the moon and the times for the next full and new moons.

Learn more about [lunar phases at NASA](https://spaceplace.nasa.gov/moon-phases/en/).

Depends on the [Astro::Moon](https://www.rubydoc.info/gems/astro_moon/0.2/Astro/Moon) gem.

## Phase names

0 - New moon
12.5 - Waxing Crescent
25 - First Quarter
37.5 - Waxing Gibbous
50 - Full moon
62.5 - Waning Gibbous
75 - Third Quarter
87.5 - Waning Crescent


## Why Doesn't It...

The publisher is agnostic about how you present information. It doesn't assume the language you're using. Therefore it doen'tt provide a name for the current phase (the language and phrasing of which is up to your application) or an image for it (again, this is up to your application).

## License

This code is published under the [MIT License](https://romkey.mit-license.org).
