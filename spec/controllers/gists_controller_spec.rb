require "spec_helper"

describe GistsController, :type => :controller do

  let(:valid_attributes) { { "snippet" => "object HelloWorld extends App {println('Hello, world!')}", "lang" => "scala", "description" => "Hello World example in Scala (from wiki)." } }

  ######################   INDEX   ########################
  describe "GET index" do

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns all gists as @gists" do
      gist = Gist.create! valid_attributes
      get :index
      expect(assigns(:gists)).to eq([gist])
    end
  end

  ######################   NEW   ######################
  describe "GET new" do
    #it "has a 200 status code" do
    #  get :new
    #  expect(response.status).to eq(200)
    #end

    #it "renders the edit template" do
    #  get :new
    #  expect(response).to render_template("new")
    #  expect(response.body).to eq ""
    #end

    #it "assigns a new @ as Gist" do
    #  get :new
    #  expect(assigns(:gist)).to be_a_new(Gist)
    #end

  end

  #######################   CREATE ########################
  describe "with valid params" do
    it "makes a new Gist" do
      expect {
        post :create, {:gist => valid_attributes}
      }.to change(Gist, :count).by(1)
    end

    it "assigns a newly created @ as Gist" do
      post :create, {:gist => valid_attributes}
      expect(assigns(:gist)).to be_a(Gist)
      expect(assigns(:gist)).to be_persisted
    end

    it "redirects to the /gists " do
      post :create, {:gist => valid_attributes}
      expect(response).to redirect_to('/gists')
    end
  end

  #######################   SHOW   ########################
  describe "GET show" do
    it "assigns the requested gist as @gist" do
      gist = Gist.create! valid_attributes
      get :show, {:id => gist.to_param}
      expect(assigns(:gist)).to eq(gist)
    end
  end

  ######################   EDIT   ########################
  describe "GET edit" do
    it "assigns the requested gist as @gist" do
      gist = Gist.create! valid_attributes
      get :edit, {:id => gist.to_param}
      expect(assigns(:gist)).to eq(gist)
    end
  end

  ######################   UPDATE   ########################

  describe "with valid params" do
    it "assigns the requested gist as @gist" do
      gist = Gist.create! valid_attributes
      put :update, {:id => gist.to_param, :gist => valid_attributes}
      expect(assigns(:gist)).to eq(gist)
    end

    it "updates the requested gist" do
      gist = Gist.create! valid_attributes
      expect_any_instance_of(Gist).to receive(:update).with({ "lang" => "scala" })
      put :update, {:id => gist.to_param, :gist => { "lang" => "scala" }}
    end

    it "redirects to the /gists" do
      gist = Gist.create! valid_attributes
      put :update, {:id => gist.to_param, :gist => valid_attributes}
      expect(response).to redirect_to('/gists')
    end

    it "update gist and redirect" do
      gist = Gist.create! valid_attributes
      expect_any_instance_of(Gist).to receive(:update).with({ "lang" => "c" })
      put :update, {:id => gist.to_param, :gist => { "lang" => "c" }}
      expect(response.status).to eq(200)
    end
  end
end
