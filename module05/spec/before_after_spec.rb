describe 'Demonstration of before/after hooks' do
    before(:context) do
        print("> before(:context) executes only once. CREATE DATABASE;\n")
    end

    before(:example) do
        print("    >> before(:example) executes before every example!\n")
    end

    after(:example) do
        print("    >> after(:example) executes after every example!\n")
    end

    after(:context) do
        print("> after(:context) executes only once. DROP DATABASE;\n")
    end

    it 'first example - will pass' do
        print("        >>> this is the first example\n")
        expect(true).to be true
    end

    it 'second example - will fail' do
        print("        >>> this is the second example\n")
        expect(true).to be fail
    end

    it 'third example - will pass' do
        print("        >>> this is the third example\n")
        expect(true).to be true
    end

    describe 'this is a sub-group with examples for method FOO()' do
        it 'first FOO example - will pass' do
            print("        >>> this is the first FOO example\n")
            expect(true).to be true
        end

        it 'second FOO example - will pass' do
            print("        >>> this is the second FOO example\n")
            expect(true).to be true
        end
    end
end
