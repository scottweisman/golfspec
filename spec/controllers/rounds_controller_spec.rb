require 'spec_helper'

describe RoundsController do

  # This should return the minimal set of attributes required to create a valid
  # Round. As you add validations to Round, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RoundsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "populates an array of rounds" do
      round = create(:round)
      get :index
      assigns(:rounds).should eq([round])
    end
    
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET show" do
    it "assigns the requested round to @round" do
      round = create(:round)
      get :show, id: round
      assigns(:round).should eq(round)
    end
    
    it "renders the show view" do
      get :show, id: create(:round)
      response.should render_template :show
    end
  end
  
  describe "GET new" do
    it "assigns a new round as @round" do
      get :new, {}, valid_session
      assigns(:round).should be_a_new(Round)
    end
  end
  
  describe "POST create" do
    context "with valid attributes" do
      it "creates a new round" do
        expect{
          post :create, round: attributes_for(:round)
          }.to change(Round,:count).by(1)
      end
      
      it "redirects to the new round" do
        post :create, round: attributes_for(:round)
        response.should redirect_to Round.last
      end
    end
      
    context "with invalid attributes" do
      it "does not save the new round" do
        expect{
          post :create, round: attributes_for(:invalid_round)
        }.to_not change(Round,:count)
      end 
      
      it "re-renders the new method" do
        post :create, round: attributes_for(:invalid_round)
        response.should render_template :new
      end
    end    
  end
  
  describe 'PUT update' do
    before :each do
      @round = create(:round, score: 75, fairways: 8, greens: 4, putts: 32)
    end
    
    context "valid attributes" do
      it "located the requested @round" do
        put :update, id: @round, round: attributes_for(:round)
        assigns(:round).should eq(@round)
      end
      
      it "changes @round's attributes" do
        put :update, id: @round,
          round: attributes_for(:round, score: 72)
        @round.reload
        @round.score.should eq(72)
      end
    end
    
    context "invalid attributes" do
      it "locates the requested @round" do
        put :update, id: @round, round: attributes_for(:invalid_round)
        assigns(:round).should eq(@round)
      end
      
      it "does not change @round's attributes" do
        put :update, id: @round, 
          round: attributes_for(:round, score: nil, putts: 9)
        @round.reload
        @round.score.should_not eq(nil)
        @round.putts.should_not eq(9)
      end
    end
  end
  
  describe 'DELETE destroy' do
    before :each do
      @round = create(:round)
    end
    
    it "deletes the contact" do
      expect{
        delete :destroy, id: @round
      }.to change(Round,:count).by(-1)
    end
    
    it "redirects to contacts#index" do
      delete :destroy, id: @round
      response.should redirect_to rounds_url
    end
  end
end






