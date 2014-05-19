require "spec_helper"

describe GistsController do

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
      expect(response.body).to eq ""
    end

    it "assigns all gists as @gists" do
      gist = Gist.create! valid_attributes
      get :index
      expect(assigns(:gists)).to eq([gist])
    end
  end

   ######################   NEW   ######################
  describe "GET new" do
    it "has a 200 status code" do
      get :new
      expect(response.status).to eq(200)
    end

    it "renders the edit template" do
      get :new
      expect(response).to render_template("new")
      expect(response.body).to eq ""
    end

    it "assigns a new @ as Gist" do
      get :new
      expect(assigns(:gist)).to be_a_new(Gist)
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

end
