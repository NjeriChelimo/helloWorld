class User < ActiveRecord::Base
  rolify
  after_create :send_welcome_mail
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  has_and_belongs_to_many :programs

  def send_welcome_mail
    UserNotifier.welcome_mail(id).deliver
  end

end
