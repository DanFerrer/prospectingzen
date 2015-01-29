class PagesController < ApplicationController
  def home
  end

  def assistants
   @events = Event.all
   @leadgens = Leadgen.all
   @contacts = Contact.all
  end

end	