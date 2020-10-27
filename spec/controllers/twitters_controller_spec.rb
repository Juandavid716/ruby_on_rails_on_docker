require 'rails_helper'

RSpec.describe TwittersController, "#create"  do
    context " When a twitter is created" do
    it "Should re-render the home page" do
        expect {Twitter.create!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    end

    context "when user is logged in" do
        
        let(:user) {create(:user)}
        before do 
          sign_in user
          post :create, params: 
          { twitter: {
            twitter: "This is a test",
            user_id: user.id}}   
        end

        it "should create a new twitter" do
          expect(Twitter.last.twitter).to eq("This is a test")
        end

        it "should delete a twitter" do 
          expect(Twitter.last.delete)
        end

        it "listar tweets" do 
            expect(Twitter.all.order("created_at DESC"))
        end
        
    end
end
