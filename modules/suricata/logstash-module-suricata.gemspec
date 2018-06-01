Gem::Specification.new do |s|
  s.name          = 'logstash-module-suricata'
  s.version       = '0.1.0.alpha'
  s.licenses      = ['Elastic License']
  s.summary       = 'Suricata Module'
  s.description   = "This gem is a Logstash module required to be installed on top of Logstash. This gem is not a stand-alone program"
  s.homepage      = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.authors       = ['Elastic']
  s.email         = 'info@elastic.co'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','modules/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "module" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency 'logstash-output-elasticsearch'

  s.add_development_dependency 'logstash-devutils'
end
