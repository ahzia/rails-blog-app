require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:example) { get('/users/1/posts') }

    it 'renders correct template' do
      expect(response).to_not render_template('show')
    end
  end

  describe 'GET /show' do
    before(:example) { get('/users/1/posts/3') }

    it 'renders correct template' do
      expect(response).to_not render_template('index')
    end
  end
end
