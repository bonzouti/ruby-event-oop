require "pry"
require "time"
class Event
  attr_accessor :start_date, :length, :title, :attendees
  emails_array = []
  def initialize(start_date, length, title, attendees)
    @start = Time.parse(start_date)
    @length = length.to_i
    @title = title.to_s
    @emails = attendees
  end
    
  def postpone_24
    postpone = 60*60*24
    @start += postpone
    return @start
  end
    
def end_date
  @end_date = @start + @length
end

def is_past
  @start < Time.now ? true : false
end

def is_future
  !itself.is_past
end

def is_soon
  Time.now - @start < 30*60 ? true : false
end
def to_s
  puts "Titre : #{@title}"
  puts "Date de début :  #{@start}"
  puts "Durée : #{@length} minutes" 
  puts "Invités : #{@emails}"
  
end
end

binding.pry 
puts "end of file"