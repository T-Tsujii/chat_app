Rails.application.config.generators do |g|
  g.helper false
  g.stylesheets false
  g.javascripts true
  g.template_engine :erb
  g.skip_routes true
  g.test_framework false
end