require 'rails_helper'

describe User do

	describe 'Validation' do
		context 'Can not create User: ' do
			let(:params) do 
				{ email: 'some@cool.com', first_name: 'first_name', 
					last_name: 'last_name', password: '28282828zzz',
					nick_name: 'nick_name'
				}
				end
			 let(:current_user) { User.where.not(balance: 0).last } # FIX IT
			
			it 'without first_name' do
				user = User.new(params.except(:first_name))
				expect(user.valid?).to eq(false)
			end

			it 'without last_name' do
				user = User.new(params.except(:last_name))
				expect(user.valid?).to eq(false)
			end

			it 'without nick_name' do 
				user = User.new(params.except(:nick_name))
				expect(user.valid?).to eq(false)
			end

			it 'without email' do
				user = User.new(params.except(:email))
				expect(user.valid?).to eq(false)
			end

			it 'without password' do
				user = User.new(params.except(:password))
				expect(user.valid?).to eq(false)
			end
		end
		 context 'Can create correct user' do
			let(:params) do 
				{ email: 'some@cool.com', first_name: 'first_name', 
				  last_name: 'last_name', password: '28282828zzz',
				  nick_name: 'nick_name'
				}
				end
			it 'with all params' do
				user = User.new(params)
				expect(user.valid?).to eq(true)
			end
		end
	end
end
