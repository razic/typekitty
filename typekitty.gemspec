Gem::Specification.new do |s|
    s.name        = 'typekitty'
    s.bindir      = 'bin'
    s.version     = '0.2.1'
    s.date        = '2014-05-16'
    s.summary     = "Typekit for Ruby"
    s.description = "Ruby client for the Adobe Typekit API"
    s.authors     = ["Zachary Adam Kaplan"]
    s.email       = 'razic@viralkitty.com'
    s.files       = [
        "lib/typekitty.rb",
        "lib/typekitty/cli.rb",
        "lib/typekitty/library.rb",
        "lib/typekitty/kit.rb",
        "lib/typekitty/api.rb"
    ]
    s.homepage    = 'https://github.com/razic/typekitty'
    s.license     = 'MIT'
    s.add_runtime_dependency 'thor', '0.19.1'
    s.add_runtime_dependency 'httparty', '0.13.1'
    s.add_runtime_dependency 'hashie', '2.1.1'
    s.add_development_dependency 'rspec', '2.14.1'
    s.add_development_dependency 'rake', '10.1.0'
    s.add_development_dependency 'webmock', '1.18.0'
    s.add_development_dependency 'vcr', '2.9.0'
    s.executables << 'typekitty'
end
