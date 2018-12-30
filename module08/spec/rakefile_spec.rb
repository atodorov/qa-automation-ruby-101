require 'rake'
load 'Rakefile'

describe 'Rakefile' do
    describe 'Default' do
        before { Rake::Task[:default].reenable }

        it 'works' do
            expect { Rake::Task[:default].invoke }.to output("Hello world\n").to_stdout
        end
    end

    describe 'Hello world' do
        before { Rake::Task[:hello_world].reenable }

        it 'works' do
            expect { Rake::Task[:hello_world].invoke }.to output("Hello world\n").to_stdout
        end
    end

    describe 'Greeting' do
        before { Rake::Task[:greeting].reenable }

        it 'Alex works' do
            expect { Rake::Task[:greeting].invoke 'Alex' }.to output("Good day Alex\n").to_stdout
        end

        it 'John works' do
            expect { Rake::Task[:greeting].invoke 'John' }.to output("Hello stranger\n").to_stdout
        end
    end

    describe 'calculator operations' do
        before do
            Rake::Task[:+].reenable
            Rake::Task[:-].reenable
            Rake::Task[:*].reenable
            Rake::Task[:/].reenable
        end

        it '+' do
            expect { Rake::Task[:+].invoke '1', 2 }.to output("3\n").to_stdout
            Rake::Task[:+].reenable

            expect { Rake::Task[:+].invoke 1, '2' }.to output("3\n").to_stdout
        end

        it '-' do
            expect { Rake::Task[:-].invoke '1', 2 }.to output("-1\n").to_stdout
            Rake::Task[:-].reenable

            expect { Rake::Task[:-].invoke 2, '1' }.to output("1\n").to_stdout
        end

        it '*' do
            expect { Rake::Task[:*].invoke '2', 2 }.to output("4\n").to_stdout
            Rake::Task[:*].reenable

            expect { Rake::Task[:*].invoke 2, '-2' }.to output("-4\n").to_stdout
        end

        it '/' do
            expect { Rake::Task[:/].invoke '2', 2 }.to output("1.0\n").to_stdout
            Rake::Task[:/].reenable

            expect { Rake::Task[:/].invoke 2, '-2' }.to output("-1.0\n").to_stdout
            Rake::Task[:/].reenable

            expect { Rake::Task[:/].invoke 5, 2 }.to output("2.5\n").to_stdout
        end

        it 'division by 0' do
            expect { Rake::Task[:/].invoke 2, 0 }.to output("Do you want to destroy the Earth?\n").to_stdout
        end
    end

    describe 'All README files in this repository' do
        it 'can be found by rake' do
            expect(README_FILES).to eq(%w[
                README.md
                module00/README.md
                module01/README.md
                module02/README.md
                module03/README.md
                module04/01-Cash-Desk/README.md
                module04/02-Bank-Account/README.md
                module04/README.md
                module05/README.md
                module06/README.md
                module07/README.md
                module08/README.md])
        end
    end
end
