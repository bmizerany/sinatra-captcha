Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.name = 'sinatra-captcha'
  s.version = '0.1.0.0'
  s.date = '2009-04-29'

  s.description = "Simple, easy captcha for Sinatra"
  s.summary = "Simple, easy captcha for Sinatra"

  s.authors = ["Blake Mizerany"]
  s.email = "sinatrarb@googlegroups.com"

  # = MANIFEST =
  s.files = %w[
    README.markdown
    lib/sinatra/captcha.rb
  ]
  # = MANIFEST =

  s.has_rdoc = false
  s.homepage = "http://www.sinatrarb.com"
  s.require_paths = %w[lib]
  s.rubyforge_project = 'sinatra-captcha'
  s.rubygems_version = '1.1.1'
end
