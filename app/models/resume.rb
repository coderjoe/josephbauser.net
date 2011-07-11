class Resume
  FIELDS = [ :first_name, :last_name, :summary, :educations, 
            :positions, :picture_url, :headline, :location, 
            :skills, :site_standard_profile_request ] 

  def initialize
    @resume = LINKEDIN_CLIENT.profile( 
                              :fields => FIELDS )
  end

  FIELDS.each do |method|
    define_method( method ) do
      @resume.send( method )
    end
  end
end
