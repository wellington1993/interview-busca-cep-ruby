require "rails_helper"

RSpec.describe Api::V1::AddressesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/addresses").to route_to("addresses#index")
    end

    it "routes to #show" do
      expect(get: "/api/v1/addresses/1").to route_to("addresses#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/api/v1/addresses").to route_to("addresses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/addresses/1").to route_to("addresses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/addresses/1").to route_to("addresses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/addresses/1").to route_to("addresses#destroy", id: "1")
    end
  end
end

