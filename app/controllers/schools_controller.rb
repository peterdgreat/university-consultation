class SchoolsController < ApplicationController

  def index
    if params[:course_of_study].present? || params[:level_of_study].present? || params[:study_destination].present?
      @schools= School.search(params[:course_of_study], params[:level_of_study], params[:study_destination])
    else
      @schools = School.all
    end

  end


end
