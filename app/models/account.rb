class Account < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :memberships
  has_many :users, through: :memberships

  accepts_nested_attributes_for :owner

  validates :subdomain, presence: true, uniqueness: true

  def create_schema
    Apartment::Tenant.create(subdomain)
  end

end
