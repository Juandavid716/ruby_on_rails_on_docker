require 'rails_helper'

RSpec.describe Twitter, type: :model do

    # Test validaciones
    context 'validation test' do
        it 'comprobar si existe el texto de un tweet' do
            twitter = Twitter.new(user_id:'1').save
            expect(twitter).to eq(false)
        end
    end

    # Test asociaciones, comprobar si un tweet pertenece a un usuario
    describe Twitter do
        it { should belong_to(:user) }
    end

end
