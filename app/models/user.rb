class User < ApplicationRecord
  after_save :print_something

  validates :user_email, :name, :age,  presence: true
  validates :user_email, unique: true
  private 
  def print_something
    puts "Registration Successful"
  end

end
