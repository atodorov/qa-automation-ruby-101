require 'solution'

describe 'solution.rb' do
    describe 'sum_of_digits' do
        it 'works per specification' do
            expect(sum_of_digits(1325132435356)).to eq(43)
            expect(sum_of_digits(123)).to eq(6)
            expect(sum_of_digits(6)).to eq(6)
            expect(sum_of_digits(-10)).to eq(1)
        end

        it 'raises exception with string parameter' do
            expect { sum_of_digits("Pesho") }.to raise_error(NoMethodError)
        end
    end

    describe 'to_digits' do
        it 'works per specification' do
            expect(to_digits(123)).to eq([1, 2, 3])
            expect(to_digits(99999)).to eq([9, 9, 9, 9, 9])
            expect(to_digits(123023)).to eq([1, 2, 3, 0, 2, 3])
        end
    end

    describe 'to_number' do
        it 'works per specification' do
            expect(to_number([1, 2, 3])).to eq(123)
            expect(to_number([3, 2, 1])).to eq(321)
            expect(to_number([9, 9, 9, 9, 9])).to eq(99999)
        end
    end

    describe 'count_vowels' do
        it 'works per specification' do
            expect(count_vowels("Ruby")).to eq(2)
            # It's a volcano name!
            expect(count_vowels("Theistareykjarbunga")).to eq(8)
            expect(count_vowels("grrrrgh!")).to eq(0)
            expect(count_vowels("Github is the second best thing that happend to programmers, after the keyboard!")).to eq(22)
            expect(count_vowels("A nice day to code!")).to eq(8)
            # empty string returns 0
            expect(count_vowels("")).to eq(0)
        end

        it 'raises exception with nil' do
            expect { count_vowels(nil) }.to raise_error(NoMethodError)
        end

        it 'raises exception with negative number' do
            expect { count_vowels(-765) }.to raise_error(NoMethodError)
        end
    end

    describe 'count_consonants' do
        it 'works per specification' do
            expect(count_consonants("Ruby")).to eq(2)
            # It's a volcano name!
            expect(count_consonants("Theistareykjarbunga")).to eq(11)
            expect(count_consonants("grrrrgh!")).to eq(7)
            expect(count_consonants("Github is the second best thing that happend to programmers, after the keyboard!")).to eq(44)
            expect(count_consonants("A nice day to code!")).to eq(6)
        end
    end

    describe 'prime_number' do
        it 'works per specification' do
            expect(prime_number(1)).to be true
            expect(prime_number(2)).to be true

            expect(prime_number(9)).to be false
            expect(prime_number(7)).to be true
            expect(prime_number(8)).to be false
        end
    end

    describe 'fact_digits' do
        it 'works per specification' do
            expect(fact_digits(111)).to eq(3)
            expect(fact_digits(145)).to eq(145)
            expect(fact_digits(999)).to eq(1088640)
        end

        it 'increases in range 1..10' do
            previous = 0

            for x in (1..9)
                result = fact_digits(x)
                expect(result).to be > previous
                previous = result
            end
        end
    end

    describe 'fibonacci' do
        it 'works per specification' do
            expect(fibonacci(1)).to eq([1])
            expect(fibonacci(2)).to eq([1, 1])
            expect(fibonacci(3)).to eq([1, 1, 2])
            expect(fibonacci(10)).to eq([1, 1, 2, 3, 5, 8, 13, 21, 34, 55])
        end
    end

    describe 'fib_number' do
        it 'works per specification' do
            expect(fib_number(3)).to eq(112)
            expect(fib_number(10)).to eq(11235813213455)
        end
    end

    describe 'palindrome' do
        it 'works per specification' do
            expect(palindrome(121)).to be true
            expect(palindrome(1211)).to be false
            expect(palindrome("kapak")).to be true
            expect(palindrome("abba")).to be true
            expect(palindrome("baba")).to be false
        end
    end

    describe 'char_histogram' do
        it 'works per specification' do
            expect(char_histogram("Ruby")).to eq({ 'R' => 1, 'u' => 1, 'b' => 1, 'y' => 1})
            expect(char_histogram("AAAAaaa!!!")).to eq({ 'A' => 4, 'a' => 3, '!' => 3 })
        end
    end
end
