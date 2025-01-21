class School < ApplicationRecord

  def self.search(course_of_study=nil, level_of_study=nil,study_destination=nil)
      query = all

      query =  query.where("course_of_study ILIKE ?","%#{course_of_study}%") if course_of_study.present?
      query =  query.where("level_of_study ILIKE ?","%#{level_of_study}%") if level_of_study.present?
      query =  query.where("study_destination ILIKE ?","%#{study_destination}%") if study_destination.present?
      query
  end
end
