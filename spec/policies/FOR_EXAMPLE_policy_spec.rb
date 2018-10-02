require 'rails_helper'


#EXAMPLE
# describe ArticlePolicy do
#   subject { described_class.new(user, article) }

#   let(:article) { Article.create }

#   context 'being a visitor' do
#     let(:user) { nil }

#     it { is_expected.to permit_action(:show) }
#     it { is_expected.to forbid_action(:destroy) }
#   end

#   context 'being an administrator' do
#     let(:user) { User.create(administrator: true) }

#     it { is_expected.to permit_actions([:show, :destroy]) }
#   end
# end