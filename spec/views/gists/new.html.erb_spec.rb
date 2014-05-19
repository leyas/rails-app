require 'spec_helper'

describe "gists/new.html.erb", :type => :view do  
  before do
    assign(:gist, Gist.create!(:snippet => "object HelloWorld extends App {println('Hello, world!')}", :description => "World example in Scala (from wiki).", :lang => "scala"))    
  end

  it "displays header" do
    render
    expect(rendered).to include("New gist")
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


  it "displays description" do
    render
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
  
  it "displays save button" do
    render
    expect(rendered).to include("Save")
  end

  it "displays back image" do
    render
    expect(rendered).to include("Back")
  end
  
  it "displays label gist" do
    render
    expect(rendered).to include("gist")
  end


end
