require 'solution'

describe 'Cash Desk solution' do
    before(:context) do
        @bill = Bill.new(5)
    end

    describe Bill do
        it '.to_s() works' do
            expect(@bill.to_s).to eq("A 5$ bill")
        end

        it '.amount works' do
            expect(@bill.amount).to eq(5)
        end

        it '.==() works' do
            bill2 = Bill.new(10)
            bill3 = Bill.new(5)

            expect(@bill).not_to eq(bill2)
            expect(@bill == bill2).to be false
            expect(@bill).to eq(bill3)
        end

        it 'initialization with non-int raises' do
            expect{ Bill.new("10") }.to raise_error(ArgumentError)
        end

        it 'initialization with negative raises' do
            expect{ Bill.new(-5) }.to raise_error(ArgumentError)
        end
    end

    describe BatchBill do
        before(:context) do
            @bill5 = Bill.new(5)
            @bill10 = Bill.new(10)
            @batch = BatchBill.new([@bill5, @bill10])
        end

        it 'contains initial data' do
            expect(@batch).to include(@bill5)
            expect(@batch).to include(@bill10)
        end

        it '.total works' do
            expect(@batch.total).to eq(15)
        end

        it '.length works' do
            expect(@batch.length).to eq(2)
        end

        it 'looping over object works' do
            for bill in @batch
                expect(bill.is_a?(Bill)).to be true
            end
        end
    end


    describe CashDesk do
        before(:example) do
            @bill = Bill.new(10)
            @batch = BatchBill.new([Bill.new(5), Bill.new(10), Bill.new(15)])
            @desk = CashDesk.new()
        end

        it '.take_money() works with bills' do
            @desk.take_money(@bill)
            expect(@desk.total).to eq(10)
        end

        it '.take_money() works with batches' do
            @desk.take_money(@batch)
            expect(@desk.total).to eq(30)
        end

        it '.total works' do
            @desk.take_money(@bill)
            @desk.take_money(@batch)
            expect(@desk.total).to eq(40)
        end

        it '.inspect works' do
            @desk.take_money(@bill)
            @desk.take_money(@batch)

            expected = """We have a total of 40$ in the desk
We have the following count of bills, sorted in ascending order:
5$ bills - 1
10$ bills - 2
15$ bills - 1"""
            expect(@desk.inspect()).to eq(expected)
        end
    end
end
