# Liquid Google Analytics Tag [![build status](https://gitlab.com/SaiAshirwadInformatia/LiquidGoogleAnalytics/badges/master/build.svg)](https://gitlab.com/SaiAshirwadInformatia/LiquidGoogleAnalytics/commits/master) [![Gem Version](https://badge.fury.io/rb/liquid-google-analytics.svg)](https://badge.fury.io/rb/liquid-google-analytics) [![coverage report](https://gitlab.com/SaiAshirwadInformatia/LiquidGoogleAnalytics/badges/master/coverage.svg)](https://gitlab.com/SaiAshirwadInformatia/LiquidGoogleAnalytics/commits/master)

This plugin helps generate Google Analytics code snippet easily with the help of Liquid Tag or Liquid Variable Filter

### Installation

This plugin is available as a [RubyGem](https://rubygems.org/gems/liquid-google-analytics/)

Add this line to your application's Gemfile:

```
gem 'liquid-google-analytics'
```

And then execute the `bundle install` command to install the gem.

Alternatively, you can also manually install the gem using the following command:

```
$ gem install liquid-google-analytics
```

For Jekyll Users, after the plugin has been installed successfully, add the following lines to your _config.yml in order to tell Jekyll to use the plugin:

```yaml
gems:
  - liquid-google-analytics
```

### Usage

You need to use `google_analytics` as liquid tag and pass the Tracking Code as parameter shown below

```
{% google_analytics UA-12345 %}
```

### Alternate

Optionally now you can also maintain Google Analytics code in config and use filter for variable as below

```yaml
ga_code: UA-12345
```

```
{{ site.ga_code | google_analytics }}
```

### Contribute

Fork this repository, create your branch, make changes and then issue a pull request.

If you find bugs or have new ideas that you do not want to implement yourself, file a bug report.

### Copyright

Copyright (c) 2016 Rohan Sakhale

License: [MIT](LICENSE.md)