# frozen_string_literal: true
require 'rails_helper'

RSpec.describe UsersController do
  describe 'POST create' do
    it 'creates post' do
      user = { email: 'test@example.com', name: 'test' }
      expect { post :create, user: user }.to change { User.count }.from(0).to(1)
    end
  end
end
