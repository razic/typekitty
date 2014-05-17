require_relative '../spec_helper'

describe 'Typekitty::Kit' do
    let :api_token do
        'b7657b3f0a75e429dd5c8b6c15c5e8514548681d'
    end

    before :each do
        Typekitty::API.default_params :token => api_token
    end

    describe 'initialization' do
        describe 'without any arguments' do
            it 'should barf' do
                expect { Typekitty::Kit.new }.to raise_error(ArgumentError)
            end
        end

        describe 'with an argument' do
            it 'should set the argument to the @id instance variable' do
                id = Typekitty::Kit.new('foo').instance_variable_get(:@id)

                expect(id).to eq 'foo'
            end
        end
    end

    describe '.all' do
        describe 'when a user has kits' do
            before :each do
                VCR.use_cassette 'GET_200_kits' do
                    @kits = Typekitty::Kit.all
                end
            end

            it 'should have a Typekitty::Kit instance in the array' do
                expect(@kits.first).to be_a Typekitty::Kit
            end
        end

        describe 'when a user has no kits' do
            before :each do
                VCR.use_cassette 'GET_200_kits_empty' do
                    @kits = Typekitty::Kit.all
                end
            end

            it 'should return an empty array' do
                expect(@kits.empty?).to be
            end
        end
    end
end
