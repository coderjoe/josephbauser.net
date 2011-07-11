class ResumeController < ApplicationController
  def index
    resume = Resume.new

    @summary = BlueCloth.new(resume.summary).to_html
    @work_experience = resume.positions
    @education = resume.educations
  end
end
