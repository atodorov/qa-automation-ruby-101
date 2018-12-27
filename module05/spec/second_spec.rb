describe 'Demonstration of before/after hooks in a second spec file' do
    before(:context) do
        print("+ before(:context) executes only once. LAUNCH SELENIUM;\n")
    end

    before(:example) do
        print("    ++ before(:example) executes before every example!\n")
    end

    after(:example) do
        print("    ++ after(:example) executes after every example!\n")
    end

    after(:context) do
        print("+ after(:context) executes only once. KILL SELENIUM;\n")
    end

    it 'first example from second file - will pass' do
        print("        +++ this is the first example\n")
        expect(true).to be true
    end

    describe 'example groups can be nested - LEVEL 1' do
        before(:example) do
            print("    +++ before() hook - LEVEL 1\n")
        end

        it 'level 1' do
            print("        ++++ example LEVEL 1\n")
            expect(true).to be true
        end

        describe 'example groups can be nested - LEVEL 2' do
            after(:example) do
                print("    ++++ after() hook - LEVEL 2\n")
            end

            it 'level 2' do
                print("        +++++ example LEVEL 2\n")
                expect(true).to be true
            end
        end
    end
end
