# == Schema Information
#
# Table name: project_contracts
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint           not null
#  project_id  :bigint           not null
#
# Indexes
#
#  index_project_contracts_on_customer_id  (customer_id)
#  index_project_contracts_on_project_id   (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#  fk_rails_...  (project_id => projects.id)
#
class ProjectContract < ApplicationRecord
  belongs_to :project

  before_create -> { project_customer_ids("before_create") }

  private
  def project_customer_ids(callback)
    logger.debug("*** #{callback}: #{project.contracts.map(&:customer_id)} ***")
  end
end
