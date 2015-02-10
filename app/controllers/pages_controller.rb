class PagesController < ApplicationController
  def home
  end

  def assistants
   @events = Event.all
   @leadgens = Leadgen.all
   @contacts = Contact.all
   @events = Event.all.order("deadline ASC")
   @leadgens = Leadgen.all.order("deadline ASC")
   @contacts = Contact.all.order("duedate ASC")
  end
  
  def create
    current_user.follow(followable)
  end

  def destroy
    current_user.stop_following(followable)
  end

end	