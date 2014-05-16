require 'spec_helper'

describe "Typekitty::API" do
    let :api_token do
        'abc123'
    end

    let :api do
        Typekitty::API.new api_token
    end

    it 'should include HTTParty' do
        expect(Typekitty::API).to include(HTTParty)
    end
end
