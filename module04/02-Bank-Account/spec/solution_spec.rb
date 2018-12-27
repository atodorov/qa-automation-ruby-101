require 'solution'

describe BankAccount do
    before(:example) do
        @account = BankAccount.new("Rado", 0, "$")
    end

    it 'can create a bank account' do
        expect(@account.is_a?(BankAccount)).to be true
    end

    it '.initiallize() raises error if amount is negative' do
        expect { BankAccount.new("Test", -100, "$") }.to raise_error(ArgumentError)
    end

    it '.initiallize() raises error if currency not set' do
        expect { BankAccount.new("Test", 100, "") }.to raise_error(ArgumentError)
    end

    it '.deposit() raises error if amount is negative' do
        expect { @account.deposit(-10) }.to raise_error(ArgumentError)
    end

    it '.deposit() in empty account works' do
        @account.deposit(500)
        expect(@account.balance).to eq(500)
    end

    it '.deposit() in non-empty account works' do
        account = BankAccount.new("Ivo", 1000, "$")
        account.deposit(500)
        expect(account.balance).to eq(1500)
    end

    it '.balance is a Numeric' do
        expect(@account.balance.is_a?(Numeric)).to be true
    end

    it '.withdraw() from non-empty account works' do
        @account.deposit(100)
        result = @account.withdraw(50)

        expect(result).to be true
        expect(@account.balance).to eq(50)
    end

    it '.withdraw() from empty-account works per specification' do
        result = @account.withdraw(50)

        expect(result).to be false
        expect(@account.balance).to eq(0)
    end

    it '.history works per specification' do
        account = BankAccount.new("Test", 0, "$")
        account.deposit(20)
        account.balance
        expected = ["Account was created", "Deposited 20$", "Balance check -> 20$"]

        expect(account.history).to eq(expected)
    end

    it '.to_s() should work per specification' do
        @account.deposit(22)
        expect(@account.to_s).to eq("Bank account for Rado with balance of 22$")
    end
end
