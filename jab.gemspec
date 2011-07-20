Gem::Specification.new do |gem|
  gem.name        = "jab"
  gem.version     = "0.1.1"
  gem.authors     = ["Lawrence Wang"]
  gem.email       = ["lawrence@levityisland.com"]
  gem.homepage    = "http://github.com/levity/jab"
  gem.summary     = "Send a Jabber message in a blink"
  gem.files       = 'lib/jab.rb'

  gem.add_runtime_dependency 'xmpp4r'
end
