describe 'Typekitty::Kit' do
    describe '.all' do
        describe 'when the user has kits' do
            before :each do
                VCR.use_cassette 'get_all_kits' do
                    @kits = Typekitty::Kit.all
                end
            end

            it 'should return an array' do
                expect(@kits).to be_an Array
            end

            it 'should wrap the API with instances of Typekitty::Kit' do
                expect(@kits.first).to be_an Typekitty::Kit
            end
        end
    end

    describe '.find id' do
        describe 'when there is a corresponding kit via API' do
            let(:kit_id) { 'gec4ttz' }

            before :each do
                VCR.use_cassette 'GET_200_kit' do
                    @kit = Typekitty::Kit.find kit_id
                end
            end

            it 'should wrap the API with an instance of Typekitty::Kit' do
                expect(@kit).to be_an Typekitty::Kit
            end
        end
    end
end
