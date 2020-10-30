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
        post :create, params:{ followed_id: user3.id}
        sign_out user2
      end

      #it "should follower list exist"
      #  expect(Relationship.where(followed_id: 3).first).not_to be_empty
      #end

      #it "should have a follower list" do
      #  expect(Relationship.all).not_to be_empty
      #end  
    end
  end
end