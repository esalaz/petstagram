class Owner < ApplicationRecord
  has_secure_password

  has_many :pets

  def self.confirm(params)
    @owner = Owner.find_by({email: params[:email]})
    @owner.try(:authenticate, params[:password])
  end
end
