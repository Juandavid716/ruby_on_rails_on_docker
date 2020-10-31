require 'rails_helper'

RSpec.describe RelationshipsController, "#create"  do
  context "when a relationship is saved without params" do
    it "should response with an error" do
      expect{ Relationship.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
  
  context "when a user use function follow" do
    context "when user is logged in" do
      let(:user) {create(:user)}
      let(:user2) {create(:user)}
      before do 
        sign_in user
        #user.active_relationships.create(followed_id: user2.id)
        post :create, params:{ followed_id: user2.id}   
      end

      it "should have a relationship on database" do
        expect(Relationship.all).not_to be_empty
      end 
    end
  end
end


RSpec.describe RelationshipsController, "#followerslist"  do
  context "when the followers list exists" do
    context "when user is logged in" do
      let(:user) {create(:user)}
      let(:user2) {create(:user)}
      let(:user3) {create(:user)}
      let(:user4) {create(:user)}
      before do 
        sign_in user
        #user.active_relationships.create(followed_id: user2.id)
        post :create, params:{ followed_id: user4.id}
        sign_out user

        sign_in user2
        post :create, params:{ followed_id: user4.id}
        sign_out user2

        sign_in user3
        post :create, params:{ followed_id: user4.id}
        sign_out user3
      end
      it "should follower list exist" do
        #expect(Relationship.where(followed_id: "4").all.size).to eq(3)
        expect(Relationship.find_by follower_id: 4).not_to be(nil)
        #expect('index').to have_content('@user3')
      end 
      
    end
  end
end