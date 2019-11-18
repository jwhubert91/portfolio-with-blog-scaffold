# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# dummy data for blogs...
10.times do |blog_num|
	Blog.create!(
		title: "Blog post #{blog_num}",
		body: "Lorem ipsum tu ne cede nalis exquisite corpse dolor"
		)
end


# dummy data for skills
5.times do |skill_num|
	Skill.create!(
		title: "Rails #{skill_num}",
		percent_used: 10
		)
end


# dummy data for works
9.times do |work_num|
	Work.create!(
		title: "Portfolio title: #{work_num}",
		subtitle: "my great service number #{work_num}",
		body: "Lorem ipsum tu ne cede nalis exquisite corpse dolor",
		main_img: "http://placehold.it/600",
		thumb_img: "http://placehold.it/350x250"
		)
end