Gem::Specification.new do |s|
    s.name        = 'typekitty'
    s.bindir      = 'bin'
    s.version     = '0.1.0'
    s.date        = '2014-05-15'
    s.summary     = "Typekit for Ruby"
    s.description = "Ruby client for the Adobe Typekit API"
    s.authors     = ["Zachary Adam Kaplan"]
    s.email       = 'razic@viralkitty.com'
    s.files       = [
        "lib/typekitty.rb",
        "lib/typekitty/cli.rb"
        "lib/typekitty/api.rb"
    ]
    s.homepage    = 'https://github.com/razic/typekitty'
    s.license     = 'MIT'
    s.add_runtime_dependency 'thor', '0.19.1'
    s.add_runtime_dependency 'httparty', '0.13.1'
    s.add_development_dependency 'rspec', '2.14.1'
    s.add_development_dependency 'webmock', '1.18.0'
    spec.executables << 'typekitty'
end
