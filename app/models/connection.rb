class Connection < ActiveRecord::Base
	validates :first_name, uniqueness: {scope: [:email, :last_name, :company, :job_title]}
	validates :email, uniqueness: true
end
