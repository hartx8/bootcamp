require 'rails_helper'
describe UsersController, type: :controller do
	describe "GET to #index" do
		#let(:current_user)
	    before do
			get :index
		end

		it 'respond\s succesfully, HTTP status code: 200' do #
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it 'renders the index template' do
			expect(response).to render_template('index')
		end
	end

	describe 'GET to #user_info' do # need to be ID
		before do
			get :new
		end

		it 'respond\s succesfully, HTTP status code: 200' do
			expect(respond).to be_success
			expect(respond).to have_http_status(200)
		end

		it 'renders help template' do
			expect(response).to render_template('user_info')
		end
	end

	describe 'GET to #edit' do # need to be ID
		before do
			get :edit
		end

		it 'respond\s succesfully, HTTP status code: 200' do
			expect(respond).to be_success
			expect(respond).to have_http_status(200)
		end

		it 'renders help template' do
			expect(response).to render_template('edit')
		end

	end
end