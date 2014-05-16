require './spec_helper'

describe "Typekitty::API" do
    let :api_url do
        'https://typekit.com/api/v1/json'
    end

    let :api_token do
        'foobar'
    end

    let :api do
        Typekitty::API
    end

    before :each do
        api.default_params :token => api_token
    end

    describe '#kits' do
        let :kits_url do
            api_url + '/kits' + '?token=' + api_token
        end

        let :kits_json do
            '{"kits":[{"id":"foo","link":"bar"}, {"id":"bar", "link":"foo"}]}'
        end

        describe '200 OK' do
            before :each do
                stub_request(:get, kits_url).
                    to_return(:status => 200, :body => kits_json)
            end

            it 'should get the kits' do
                kits = api.kits
                expect(kits).to include 'foo'
                expect(kits).to include 'bar'
            end
        end

        describe '401 Unauthorized' do
            before :each do
                stub_request(:get, kits_url).to_return(:status => 401)
            end

            it 'should return an empty array' do
                expect(api.kits).to be_empty
            end
        end
    end
end
