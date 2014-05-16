require 'rspec'
require 'typekitty'

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

    describe '#api_token' do
        it 'should have an api token' do
            expect(api.api_token).to equal(api_token)
        end
    end
end
