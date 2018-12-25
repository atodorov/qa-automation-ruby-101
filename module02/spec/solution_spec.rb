require 'solution'

describe 'solution.rb' do
    describe 'num_add' do
        it 'shoud add 2 numbers together' do
            expect(num_add(10, 200)).to eq(210)
            expect(num_add(2.5, 1.5)).to eq(4.0)
        end
    end

    describe 'num_sub' do
        it 'should subtract two numbers' do
            expect(num_sub(200, 10)).to eq(190)
            expect(num_sub(10, 200)).to eq(-190)
            expect(num_sub(1.5, 2.5)).to eq(-1.0)
        end
    end

    describe 'num_mul' do
        it 'should multiply two numbers' do
            expect(num_mul(5, 55)).to eq(5*55)

            expect(num_mul(3, 2)).to eq(6)
            expect(num_mul(2, 3)).to eq(6)
            expect(num_mul(2.5, 4)).to eq(10.0)
        end
    end

    describe 'num_div' do
        it 'should divide two numbers' do
            expect(num_div(4, 2)).to eq(2)
            expect(num_div(3, 2)).to eq(1)
            expect(num_div(2, 3)).to eq(0)
            expect(num_div(3.0, 2)).to eq(1.5)
        end
    end

    describe 'num_floor' do
        it 'should perform floor division' do
            expect(num_floor(10, 4)).to eq(2)
            expect(num_floor(4, 10)).to eq(0)
        end
    end

    describe 'num_rem' do
        it 'should return remainder after division' do
            expect(num_rem(10, 5)).to eq(0)
            expect(num_rem(10, 4)).to eq(2)
            expect(num_rem(4, 10)).to eq(4)
        end
    end

    describe 'boolean constants' do
        it 'IS_TRUE should be true' do
            expect(IS_TRUE).to eq(true)
            expect(IS_TRUE).to be_a_kind_of(TrueClass)
        end

        it 'IS_FALSE should be false' do
            expect(IS_FALSE).to eq(false)
            expect(IS_FALSE).to be_a_kind_of(FalseClass)
        end
    end
end
