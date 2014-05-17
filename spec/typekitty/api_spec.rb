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

    it 'should include HTTParty' do
        expect(Typekitty::API).to include HTTParty
    end

    describe '.kits' do
        before :each do
            VCR.use_cassette 'GET_200_kits' do
                @kits = api.kits
            end
        end

        it 'should return an array of kits by `id`' do
            expect(@kits.first).to eq 'ayh2hmf'
        end
    end

    describe '.handle_response' do
        describe 'when response code is 200' do
            let :response do
                double "response", :code => 200
            end

            it 'should return the response' do
                expect(api.handle_response response).to be response
            end
        end

        describe 'when response code is 401' do
            let :response do
                double "response", :code => 401
            end

            it 'should raise an unauthorized error' do
                expect { api.handle_response response }.to \
                    raise_error Typekitty::API::UnauthorizedError
            end
        end
    end
end
