class ResumeController < ApplicationController
  def index
    resume = YAML_RESUME['resume']
    @summary = resume['summary']
    @objective = resume['objective']
    @work_experience = resume['experience']['work']
    @other_experience = resume['experience']['other']
    @education = resume['education']
    @skills = resume['skills']
    @interests = resume['interests']
    @references = resume['references']
  end
end
