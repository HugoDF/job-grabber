Gem::Specification.new do |s|
  s.name        = 'job-grabber'
  s.version     = '0.0.1'
  s.date        = '2016-02-15'
  s.summary     = "Job Grabber"
  s.description = "Gets jobs from multiple sources and return a list of them normalised to Job objects"
  s.authors     = ["Hugo Di Francesco"]
  s.email       = 'hugo@awebots.com'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    =
    'https://github.com/HugoDF/job-grabber'
  s.license     = 'MIT'
  s.required_ruby_version = ">=2.1.0"
  s.add_runtime_dependency 'dotenv', '~> 2.1.0'
  s.add_runtime_dependency 'redd', '~> 0.7.0'
  s.add_runtime_dependency 'workinstartups-api', '~> 0.0.6'
  s.add_runtime_dependency 'hnjobs', '~>0.0.3'
end