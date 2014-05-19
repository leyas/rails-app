require 'spec_helper'

describe "gists/edit.html.erb", :type => :view do
  #let(:gist) do
  #  stub_model Gist, :snippet => "object HelloWorld extends App {println('Hello, world!')}", :description => "World example in Scala (from wiki).", :language => "scala"
  #end
  
  #before do
  #  assign(:gist, stub_model(Gist, snippet: "object HelloWorld extends App {println('Hello, world!')}", description: "World example in Scala (from wiki).", language: "scala"))
  #end
  
  before do
    assign(:gist, Gist.create!(:snippet => "object HelloWorld extends App {println('Hello, world!')}", :description => "World example in Scala (from wiki).", :lang => "scala"))    
  end

  it "displays header" do
    render
    expect(rendered).to include("Editing gist")
  end

  it "displays lang headline" do
    render
    expect(rendered).to include("Lang")
  end

  it "displays description headline" do
    render
    expect(rendered).to include("Description")
  end

  it "renders _form partial" do
    render
    expect(view).to render_template(:partial => "_form", :count => 1)
  end

  it "displays Snippet" do
    render
    expect(rendered).to include("snippet")
  end

  it "displays snippet" do
    render
    expect(rendered).to include("Snippet")
    expect(rendered).to include("snippet")
  end

  it "displays description" do
    render
    expect(rendered).to include("description")
  end

  it "displays description" do
    render
    expect(rendered).to include("Description")
    expect(rendered).to include("description")
  end

  it "displays show image" do
    render
    expect(rendered).to include("Show")
  end

  it "displays back button" do
    render
    expect(rendered).to include("back")
  end

  it "displays back image" do
    render
    expect(rendered).to include("Back")
  end
  
  it "displays back image" do
    render
    expect(rendered).to include("Edit")
  end
  
  it "displays label gist" do
    render
    expect(rendered).to include("gist")
  end

  it "displays label my gists" do
    render
    expect(rendered).to include("gist")
  end
  it "displays second label my gists" do
    render
    expect(rendered).to include("gist")
  end

end
