require 'pry'
class User
  attr_accessor :email
  @@array_list = Array.new
 

  def initialize(email_to_save)
    @email = email_to_save
    @array_list << self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end


  def self_all
    return self_all
    
  end

  def show_itself
    puts self
    
  end

  def self.count
    return @@user_count
  end

end

#binding.pry