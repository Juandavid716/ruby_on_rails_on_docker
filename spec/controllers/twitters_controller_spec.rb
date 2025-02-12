require 'rails_helper'

RSpec.describe TwittersController, "#create"  do
    context " When a twitter is created" do
      it "Should re-render the home page" do
        expect {Twitter.create!}.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "should answer with 'completed' like response code" do
        expect(response).to have_http_status(:success)
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

        it "should answer with 'completed' like response code" do
          expect(response).to have_http_status(302)
        end
    end
end

RSpec.describe TwittersController, "#delete"  do
  
  context "when user is logged in" do
      
      let(:user) {create(:user)}
      let(:twitter) {create(:twitter, user_id: user.id)}
      before do 
        sign_in user
        post :destroy, params: 
        { 
          id: twitter.id
        }   
      end

      it "should delete a twitter" do 
        expect(Twitter.all.size).to eq(0)
      end

      it "should return server answer 'found'" do
        expect(response).to have_http_status(:found)
      end
      
  end
end

RSpec.describe TwittersController, "#tweet's list"  do
  context "when user is logged in" do
      let(:user) {create(:user)}
      let(:twitter) {create(:twitter, user_id: user.id)}
      let(:twitter2) {create(:twitter, user_id: user.id)}
      let(:twitter3) {create(:twitter, user_id: user.id)}

      before do 
        sign_in user
      end

      it "should answer with 'OK' like response code" do
        expect(response).to have_http_status(200)
      end

      it "list tweets exists " do
   #     expect("home").to have_link("current_user.name", href: '/index.html')
      end
  end
end