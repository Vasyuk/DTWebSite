class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  def http_basic_authenticate_with(options = {})
    before_action(options.except(:name, :password, :realm)) do
      authenticate_or_request_with_http_basic(options[:realm] || "Application") do |name, password|
        ActiveSupport::SecurityUtils.variable_size_secure_compare(name, options[:name]) &
        ActiveSupport::SecurityUtils.variable_size_secure_compare(password, options[:password])
      end
    end
  end    
end
