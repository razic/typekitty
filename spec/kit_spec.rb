require 'rspec'
require 'typekitty'

describe "Typekitty::Kit" do
    let :kit_name do
        'viralkitty'
    end

    let :kit do
        Typekitty::Kit.new kit_name
    end

    describe "#name" do
        it "should have a name" do
            expect(kit.name).to equal(kit_name)
        end
    end
end
