require 'solution'

describe 'solution.rb' do
    describe 'f_c' do
        it 'should return 4' do
            expect(f_c()).to eq(4)
        end

        it 'should return 4 for any number' do
            (-10..10).each do |x|
                expect(f_c(x)).to eq(4)
            end
        end
    end

    describe 'f_x' do
        it 'should calculate correctly' do
            (-10..10).each do |x|
                (-10..10).each do |a|
                    (-10..10).each do |b|
                        expect(f_x(x, a, b)).to eq(x * a + b)
                    end
                end
            end
        end

        it 'should accept floating point numbers' do
            expect(f_x(2, 3.14, 1.49)).to eq(7.77)
        end
    end

    describe 'sum' do
        it 'should calculate correctly' do
            (-10..10).each do |x|
                expected = 0

                (1..3).each do |i|
                    expected += f_x(x, i, i)
                end

                expect(expected).to eq(sum(x))
            end
        end
    end
end
