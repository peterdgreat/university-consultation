# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing records (optional)
School.destroy_all

# Create sample schools
School.create([
  {
    name: "Harvard University",
    course_of_study: "Computer Science",
    level_of_study: "Undergraduate",
    study_destination: "USA",
    description: "A prestigious Ivy League university.",
    fees: "$50,000",
    intake_date: Date.new(2023, 9, 1),
    duration: "4 years",
    scholarship_availability: true,
    deadline: Date.new(2023, 1, 15)
  },
  {
    name: "University of Oxford",
    course_of_study: "Philosophy",
    level_of_study: "Postgraduate",
    study_destination: "UK",
    description: "One of the oldest universities in the world.",
    fees: "$30,000",
    intake_date: Date.new(2023, 10, 1),
    duration: "1 year",
    scholarship_availability: false,
    deadline: Date.new(2023, 5, 1)
  },
  {
    name: "University of Toronto",
    course_of_study: "Engineering",
    level_of_study: "Undergraduate",
    study_destination: "Canada",
    description: "A leading research university in Canada.",
    fees: "$45,000",
    intake_date: Date.new(2023, 9, 1),
    duration: "4 years",
    scholarship_availability: true,
    deadline: Date.new(2023, 1, 15)
  },
  {
    name: "Australian National University",
    course_of_study: "Environmental Science",
    level_of_study: "Undergraduate",
    study_destination: "Australia",
    description: "A top-ranked university in Australia.",
    fees: "$40,000",
    intake_date: Date.new(2023, 2, 1),
    duration: "3 years",
    scholarship_availability: true,
    deadline: Date.new(2022, 11, 30)
  },
  {
    name: "National University of Singapore",
    course_of_study: "Business Administration",
    level_of_study: "Postgraduate",
    study_destination: "Singapore",
    description: "A leading global university located in Asia.",
    fees: "$35,000",
    intake_date: Date.new(2023, 8, 1),
    duration: "1 year",
    scholarship_availability: false,
    deadline: Date.new(2023, 4, 1)
  }
])
