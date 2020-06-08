require "pry"

class User
  attr_accessor :email, :age
  @@user_count = 0
  @@all_users = []

  ## CREATE NEW USER
  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users << self
  end
  
  def self.all
    @@all_users 
  end

  def self.find_by_email(email)
    @@all_users.each do |user|

      if user.email == email
        return user
      end

    end

    puts "aucun utilisateur n'a cet email"
    return false
  end

  def show_itself
    puts self
  end
  
  
  private

end
