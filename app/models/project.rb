# == Schema Information
#
# Table name: projects
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint           not null
#
# Indexes
#
#  index_projects_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#
class Project < ApplicationRecord
  belongs_to :customer
  has_many :contracts, class_name: "ProjectContract", foreign_key: "project_id"
end
