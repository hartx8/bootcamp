require 'rails_helper'
describe PagesController, type: :controller do
	describe "GET  to #index" do
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

	describe 'GET to #help' do
		before do
			get :help
		end

		it 'respond\s succesfully, HTTP status code: 200' do
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it 'renders help template' do
			expect(response).to render_template('help')
		end
	end
end


 # assert_template has been extracted to a gem. To continue using it,
 #               add `gem 'rails-controller-testing'` to your Gemfile.
