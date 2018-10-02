require 'rails_helper'

describe Task do 

	describe 'Validation' do
		context 'Can not create task:' do
			let(:user) do User.create(email: 'example@mail.com',password: 'password123', 
				first_name: "User", last_name: "Cool", nick_name: "Cool User", balance: 500)
			end

			let(:params) do 
				{ task_url: "myfood", description: "About task", 
				 goal: 55, task_type: "like", amount: 50.05, user_id: 1
				}
			end

			it 'without task_url' do
				task = user.tasks.create(params.except(:task_url))
				expect(task.valid?).to_eql(false)
			end

			it 'without task_type' do
				task = user.tasks.create.create(params.except(:task_type))
				expect(task.valid?).to_eql(false)
			end

			it 'without task_description' do
				task = user.tasks.create(params.except(:task_description))
				expect(task.valid?).to_eql(false)
			end

			it 'without task_url' do
				task = user.tasks.create(params.except(:goal))
				expect(task.valid?).to_eql(false)
			end

			it 'without task_url' do
				task = user.tasks.create(params.except(:amount))
				expect(task.valid?).to_eql(false)
			end
	    end
	    context 'Can create valid task' do
			let(:params) do 
				{ task_url: "myfood", description: "About task", 
				 goal: 55, task_type: "like", amount: 505.05,
				}
			end

	    	it 'with all params' do
	    		task = user.tasks.create(params)
	    		expect(task.valid?).to_eql(true)
	    	end

	    end
	end
end