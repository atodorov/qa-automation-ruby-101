require 'rake'
load 'Rakefile'

describe 'Rakefile' do
#    before(:each) do
#        Rake.application.load_rakefile
#    end

    describe ':default' do
        before { Rake::Task[:default].reenable }

        it 'works' do
            expect { Rake::Task[:default].invoke }.to output("Hello world\n").to_stdout
        end
    end

    describe ':hello_world' do
        before { Rake::Task[:hello_world].reenable }

        it 'works' do
            expect { Rake::Task[:hello_world].invoke }.to output("Hello world\n").to_stdout
        end
    end

    describe ':greeting' do
        before { Rake::Task[:greeting].reenable }

        it 'greeting Alex works' do
            expect { Rake::Task[:greeting].invoke 'Alex' }.to output("Good day Alex\n").to_stdout
        end

        it 'greeting John works' do
            expect { Rake::Task[:greeting].invoke 'John' }.to output("Hello stranger\n").to_stdout
        end
    end
end
