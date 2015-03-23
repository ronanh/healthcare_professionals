class StaticPagesController < ApplicationController
  def home
    @healthcare_professionals = HealthcareProfessional.all
    @hash = Gmaps4rails.build_markers(@healthcare_professionals) do |healthcare_professional, marker|
      marker.lat healthcare_professional.latitude
      marker.lng healthcare_professional.longitude
      #marker.infowindow "#{healthcare_professional.firstname} #{healthcare_professional.lastname} #{view_context.link_to 'Show', view_context.edit_healthcare_professional_path(healthcare_professional)}"

      marker.infowindow render_to_string(:partial => "healthcare_professionals/infowindow", :locals => { :healthcare_professional => healthcare_professional})
    end
  end
end
