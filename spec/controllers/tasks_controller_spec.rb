# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe "GET /new" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
