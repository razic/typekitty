describe 'Typekitty::Library' do
    describe '.all' do
        describe 'when the user has kits' do
            before :each do
                VCR.use_cassette 'get_libraries' do
                    @libraries = Typekitty::Library.all
                end
            end

            it 'should return an array' do
                expect(@libraries).to be_an Array
            end

            it 'should not be empty' do
                expect(@libraries).to_not be_empty
            end

            it 'should wrap the API with instances of Typekitty::Library' do
                @libraries.each do |lib|
                    expect(lib).to be_a Typekitty::Library
                end
            end
        end
    end
end
