require 'solution'

def test_pancake_ingredients()
    PANCAKE_INGREDIENTS.keys.each do |key|
        expect(['flour', 'eggs', 'milk', 'butter', 'salt'].include?(key)).to be true
    end

    expect(PANCAKE_INGREDIENTS['flour']).to eq(2)
    expect(PANCAKE_INGREDIENTS['eggs']).to eq(4)
    expect(PANCAKE_INGREDIENTS['milk']).to eq(200)
    expect(PANCAKE_INGREDIENTS['salt']).to eq(0.001)
    expect(PANCAKE_INGREDIENTS['butter']).to be false
end

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

    describe 'PANCAKE_INGREDIENTS' do
        it 'should contain all required keys/values' do
            test_pancake_ingredients
        end
    end

    describe 'ingredient_exists' do
        it 'should work per specification' do
            expect(ingredient_exists('flour', PANCAKE_INGREDIENTS)).to be true
            expect(ingredient_exists('FLOUR', PANCAKE_INGREDIENTS)).to be false
            expect(ingredient_exists('salt', PANCAKE_INGREDIENTS)).to be true
            expect(ingredient_exists('sugar', PANCAKE_INGREDIENTS)).to be false

            # test that the global PANCAKE_INGREDIENTS variable is not used
            # but rather the parameter of this function is used inside its body!
            coffee_recipe = {
                'sugar' => 1,
                'water' => 200,
                'coffee'=> 1,
                'heat'  => true,
            }
            expect(ingredient_exists('sugar', coffee_recipe)).to be true
        end
    end

    describe 'fatten_pancakes' do
        test_ingredients = PANCAKE_INGREDIENTS.clone
        test_ingredients['canary'] = 404
        fat_ingredients = fatten_pancakes(test_ingredients)

        it 'should work per specification' do
            # test that result is a new dictionary
            expect(fat_ingredients.object_id).not_to eq(test_ingredients.object_id)
            # test that the input parameter was used
            expect(fat_ingredients['canary']).to eq(404)

            expect(fat_ingredients['flour']).to eq(2)
            expect(fat_ingredients['eggs']).to eq(6)
            expect(fat_ingredients['milk']).to eq(200)
            expect(fat_ingredients['butter']).to be true
            expect(fat_ingredients['salt']).to eq(0.001)
        end

        it 'PANCAKE_INGREDIENTS should not have changed' do
            test_pancake_ingredients
        end
    end

    describe 'add_sugar' do
        test_ingredients = PANCAKE_INGREDIENTS.clone()
        test_ingredients['canary'] = 405
        with_sugar = add_sugar(test_ingredients)

        it 'works per specification' do
            # test that result is a new dictionary
            expect(with_sugar.object_id).not_to eq(test_ingredients.object_id)
            # test that the input parameter was used
            expect(with_sugar['canary']).to eq(405)

            expect(with_sugar['flour']).to eq(2)
            expect(with_sugar['eggs']).to eq(4)
            expect(with_sugar['milk']).to eq(200)
            expect(with_sugar['butter']).to be false
            expect(with_sugar['salt']).to eq(0.001)
            expect(with_sugar['sugar']).to be true
        end

        it 'PANCAKE_INGREDIENTS should not have changed' do
            test_pancake_ingredients
        end
    end

    describe 'remove_salt' do
        test_ingredients = PANCAKE_INGREDIENTS.clone()
        test_ingredients['canary'] = 406
        no_salt = remove_salt(test_ingredients)

        it 'should work per specification' do
            # test that result is a new dictionary
            expect(no_salt.object_id).not_to eq(test_ingredients.object_id)
            # test that the input parameter was used
            expect(no_salt['canary']).to eq(406)

            expect(no_salt.keys.include?('salt')).to be false

            expect(no_salt['flour']).to eq(2)
            expect(no_salt['eggs']).to eq(4)
            expect(no_salt['milk']).to eq(200)
            expect(no_salt['butter']).to be false
        end

        it 'PANCAKE_INGREDIENTS should not have changed' do
            test_pancake_ingredients
        end
    end

    describe 'FIBONACCI_NUMBERS' do
        it 'should follow specification' do
            expect(FIBONACCI_NUMBERS).to eq([1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144])
        end
    end

    describe 'add_fibonacci' do
        numbers = FIBONACCI_NUMBERS.clone

        it 'should work per soecification' do
            expect(numbers).to eq([1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144])
            expect(add_fibonacci(numbers)[-1]).to eq(233)
            expect(add_fibonacci(numbers)[-1]).to eq(377)
            expect(add_fibonacci(numbers)[-1]).to eq(610)
        end
    end

    describe 'fib_exists' do
        it 'should work per specification' do
            # validate input parameter is in use
            expect(fib_exists([1, 1], 2)).to be false

            expect(fib_exists(FIBONACCI_NUMBERS, 0)).to be false
            expect(fib_exists(FIBONACCI_NUMBERS, 1)).to be true
            expect(fib_exists(FIBONACCI_NUMBERS, 144)).to be true
        end
    end

    describe 'which_fib' do
        it 'should work per specification' do
            # validate input parameter is in use
            expect { which_fib([1, 1], 2) }.to raise_error(NoMethodError)

            expect(which_fib(FIBONACCI_NUMBERS, 1)).to eq(1)
            expect(which_fib(FIBONACCI_NUMBERS, 55)).to eq(10)

            expect {
                which_fib(FIBONACCI_NUMBERS, 99999)
            }.to raise_exception(NoMethodError)
        end
    end
end
