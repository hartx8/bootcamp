require 'rails_helper'

describe Report do

	describe 'Validation' do
		context 'Create report' do

			it 'without text' do
				report= Report.new(user_id: 1)
				expect(report.valid?).to_eql(false)
			end

			it 'without user_id' do
				report= Report.new(text: 'Hey admin!')
				expect(report.valid?).to_eql(true)
			end

			it 'with too much text in report' do
				big_string = "lololo"*10
				report = Report.new(text: big_string, user_id: 1)
				expect(report.valid?).to_eql(false)
			end

			it 'with valid text' do
			    report= Report.new(text: 'Hey admin!', user_id: 1)
				expect(report.valid?).to_eql(true)
			end
		end
	end
end