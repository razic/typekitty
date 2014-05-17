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
        describe 'when the user has kits' do
            before :each do
                VCR.use_cassette 'get_all_kits' do
                    @kits = api.kits
                end
            end

            it 'should return an array' do
                expect(@kits).to be_an Array
            end

            it 'the array should contain a kit' do
                expect(@kits).to_not be_empty
            end
        end
    end

    describe '.kit' do
        describe 'when there is a kit matching the id' do
            let(:kit_id) { 'gec4ttz' }

            before :each do
                VCR.use_cassette 'GET_200_kit' do
                    @kit = api.kit kit_id
                end
            end

            it 'should return the kit' do
                expect(@kit['id']).to eq kit_id
            end
        end
    end

    describe '.libraries' do
        before :each do
            VCR.use_cassette 'get_libraries' do
                @libraries = api.libraries
            end
        end

        it 'should return an array' do
            expect(@libraries).to be_an Array
        end

        it 'should return 3 libraries in the array' do
            expect(@libraries.count).to be 3
        end

        it 'should return the trial library in the array' do
            expect(@libraries[0]['id']).to eq 'trial'
        end

        it 'should return the personal library in the array' do
            expect(@libraries[1]['id']).to eq 'personal'
        end

        it 'should return the full library in the array' do
            expect(@libraries[2]['id']).to eq 'full'
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
