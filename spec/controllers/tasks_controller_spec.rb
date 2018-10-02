require 'rails_helper'
describe TasksController, type: :controller do
	describe "GET to #task_info" do
		#let(:current_user)
	    before do
			get :task_info # ID is needed here
		end

		it 'respond\s succesfully, HTTP status code: 200' do #
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it 'renders the index template' do
			expect(response).to render_template('task_info')
		end
	end

	describe 'GET to #new' do # need to be ID
		before do
			get :new
		end

		it 'respond\s succesfully, HTTP status code: 200' do
			expect(respond).to be_success
			expect(respond).to have_http_status(200)
		end

		it 'renders help template' do
			expect(response).to render_template('new')
		end
	end
end