lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'port-a-query/version'

spec = Gem::Specification.new do |s|
  s.name = 'port-a-query'
  s.version = PortAQuery::VERSION
  s.summary = "SQL query portability helpers"
  s.description = "Simple helper for generating portable SQL expressions."
  s.files = Dir['lib/**/*.rb']
  s.require_path = 'lib'
  s.has_rdoc = false
  s.author = "Adam Crownoble"
  s.email = "adam@obledesign.com"
  s.homepage = "http://obledesign.com"
end
