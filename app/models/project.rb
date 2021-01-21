class Project < ApplicationRecord
    validates :project_name, :description, :status, presence: true
end
