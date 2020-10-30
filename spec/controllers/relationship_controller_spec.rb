require 'rails_helper'

RSpec.describe RelationshipsController, "#create"  do

  context "when a user use function follow" do
    context "when user is logged in" do
      let(:user) {create(:user)}
      let(:user2) {create(:user)}
      before do 
        sign_in user
        user.active_relationships.create(followed_id: user2.id)
        #post :follow, params:         { user: user2}   
      end

      it "should have a follower list" do
        expect(Relationship.all).not_to be_empty
      end  
    end
  end
end