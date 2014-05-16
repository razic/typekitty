require 'spec_helper'

describe "Typekitty::Client" do
    let :api_url do
        'https://typekit.com/api/v1/json'
    end

    let :api_token do
        'foobar'
    end

    let :client do
        Typekitty::Client.new api_token
    end

    describe '#kits' do
        let :kits_url do
            api_url + '/kits' + '?token=' + api_token
        end

        let :kits_json do
            '{"kits":[{"id":"foo","link":"bar"}, {"id":"bar", "link":"foo"}]}'
        end

        before :each do
            stub_request(:get, kits_url).
                to_return(:status => 200, :body => kits_json)
        end

        it 'should get the kits' do
            kits = client.kits
            expect(kits).to include 'foo'
            expect(kits).to include 'bar'
        end
    end
end
