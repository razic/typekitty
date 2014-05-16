require_relative '../spec_helper'

describe "Typekitty::API" do
    let :api do
        Typekitty::API
    end

    let :api_token do
        'b7657b3f0a75e429dd5c8b6c15c5e8514548681d'
    end

    before :each do
        api.default_params :token => api_token
    end

    describe '#kits' do
        describe 'GET 200' do
            it 'return kits by their `id` in an array' do
                VCR.use_cassette 'GET_200_kits' do
                    expect(api.kits).to include 'ayh2hmf'
                end
            end
        end

        describe '401 Unauthorized' do
            let :api_token do
                'invalid_api_token'
            end

            it 'should return an empty array' do
                VCR.use_cassette 'GET_401_kits' do
                    expect(api.kits).to be_empty
                end
            end
        end
    end
end
