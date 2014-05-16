require 'rspec'
require 'vcr'
require 'webmock/rspec'

require_relative '../lib/typekitty'

VCR.configure do |c|
    c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
    c.hook_into :webmock
end
