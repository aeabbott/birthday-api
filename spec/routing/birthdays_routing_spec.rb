require "rails_helper"

RSpec.describe BirthdaysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/birthdays").to route_to("birthdays#index")
    end

    it "routes to #new" do
      expect(:get => "/birthdays/new").to route_to("birthdays#new")
    end

    it "routes to #show" do
      expect(:get => "/birthdays/1").to route_to("birthdays#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/birthdays/1/edit").to route_to("birthdays#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/birthdays").to route_to("birthdays#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/birthdays/1").to route_to("birthdays#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/birthdays/1").to route_to("birthdays#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/birthdays/1").to route_to("birthdays#destroy", :id => "1")
    end

  end
end
