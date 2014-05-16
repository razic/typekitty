require_relative '../spec_helper'

describe "Typekitty::API" do
    let :api do
        Typekitty::API
    end

    before :each do
        api.default_params :token => 'b7657b3f0a75e429dd5c8b6c15c5e8514548681d'
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
            xit 'should return an empty array' do
                VCR.use_cassette 'GET_401_kits' do
                    expect(api.kits).to be_empty
                end
            end
        end
    end
end
