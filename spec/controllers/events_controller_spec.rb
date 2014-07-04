require 'spec_helper'

describe EventsController do
  before :each do
    user = User.create(email: 'qwe@qwe.com', password: 'qweqweqwe', password_confirmation: 'qweqweqwe')
    sign_in user
  end

  describe "GET 'index'" do
    it 'returns http success' do
      get 'index'
      response.should be_success
    end
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET 'my_events'" do
    it 'returns http success' do
      get 'my_events'
      response.should be_success
    end
  end

  describe 'GET #show' do
  it 'assigns the requested event to @events' do
    end
  it 'renders the :show template' do
      event = Event.create(event_name: Forgery(:lorem_ipsum).words(2, random: true), description: Forgery(:lorem_ipsum).words(2, random: true), address: Forgery(:lorem_ipsum).words(2, random: true), date: 12, time: 12)
      id = event.id
      get :show, id: id
    end
end

  describe 'POST#create' do
   it 'redirects to the index page' do

     valid_attributes = { event_name: Forgery(:lorem_ipsum).words(2, random: true), description: Forgery(:lorem_ipsum).words(2, random: true), address: Forgery(:lorem_ipsum).words(2, random: true), date: 12, time: 12 }

     post :create, event: valid_attributes
     response.should redirect_to(assigns(:event))

   end
 end

  # describe "GET #new" do
  #   it "assigns a new Event to @event"
  #   it  "renders the :new template"
  # end

  # context "with invalid attributes" do
  #   it "does not save th new event in the database"
  #   it "re-renders the :new template"
  # end
  # describe "GET 'show'" do
  #   it "returns http success" do
  #     get 'event_path'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'new'" do
  #   it "returns http success" do
  #     get 'new'
  #     response.should be_success
  #   end
  # end

  # describe "post 'create'" do
  #   it "returns http success" do
  #     get 'show'
  #     response.should be_success
  #   end
  # end

  #  describe "create" do
  #   it "responds to POST" do
  #     post :create
  #     expect(response.body).to eq "create called"
  #   end
  # end
  # describe "GET 'edit'" do
  #   it "returns http success" do
  #     get 'edit'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'update'" do
  #   it "returns http success" do
  #     get 'update'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'destroy'" do
  #   it "returns http success" do
  #     get 'destroy'
  #     response.should be_success
  #   end
  # end

end
