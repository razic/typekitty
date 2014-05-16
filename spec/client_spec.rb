require 'spec_helper'

describe "Typekitty::Client" do
    let :api_token do
        'abc123'
    end

    let :client do
        Typekitty::Client.new api_token
    end

    describe '#kits' do
        it 'should get the kits' do
            VCR.use_cassette 'kits' do
                expect(client.kits).to include 'ayh2hmf'
            end
        end
    end
end
