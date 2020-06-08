require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :time, :attendees
  @@all_events = []
  @@event_count = 0
## CREATING NEW EVENTS 
  def initialize(event_start_date, duration, title, attendees)
    @start_date = Time.parse(event_start_date) ## strftime("%H:%M:%S %d/%m/%Y")  ## avec ( )
    @duration = duration
    @title = title
    @attendees = attendees

    @@all_events << {@@event_count => self}
    @@event_count += 1
  end
  
## METHODS ON EVENTS
  def postpone_24h
    @start_date += (3600*24)
    return @start_date
  end
  
  def end_date
    return @start_date + (@duration * 60)
  end

  def is_past?
    if end_date < Time.now
      return true
    else return false
    end
  end

  def is_future?
    if @start_date > Time.now
      return true
    else return false
    end
  end

  def is_soon?
    if (@start_date - Time.now) <= (30*60)
      return true
    else return false
    end
  end

  def to_s
    start_date_strftime = @start_date.strftime("%H:%M:%S %d/%m/%Y")
    puts "> Titre : #{@title}"
    puts "> Date de début : #{start_date_strftime}"
    puts "> Durée : #{@duration} minutes"
    invitations = @attendees.each {|i| i}.join', '
    puts "> Invités : #{invitations}"
  end

  def self.all
    return @@all_events
  end

  def age_analysis
    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
      age_array << attendee.age #leur âge est stocké dans l'array des âges
      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    end

    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end
  
end
