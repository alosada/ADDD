$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'DeDoDrop-generator'
  s.version     = '1.0.1'
  s.date        = '2015-09-10'
  s.summary     = "DeDoDrop is a gem to hande dependent drop downs."
  s.description = "DeDoDrop is a gem to hande dependent drop downs. It can only handle one dependency at the moment."
  s.authors     = ["Alejandro E. Losada"]
  s.email       = 'alejandrolosada@alejandrolosada.net'
  s.files       = Dir.glob("{lib}/**/*")
  s.require_path = 'lib'
  s.homepage    = 'http://rubygems.org/gems/de_do_drop'
  s.license     = 'MIT'
end