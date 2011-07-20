lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
Gem::Specification.new do |gem|
  gem.name        = "jab"
  gem.version     = 0.1
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Lawrence Wang"]
  gem.email       = ["lawrence@levityisland.com"]
  gem.homepage    = "http://github.com/levity/jab"
  gem.summary     = "Send a Jabber message in a blink"
  gem.files        = 'jab.rb'
  gem.add_runtime_dependency 'xmpp4r'
end
