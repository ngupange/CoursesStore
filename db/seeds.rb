# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Course.delete_all
co = Course.new(title: 'Learning Gatsby',
classfication: 'Computer',
language: 'English',
status: 'Free',
price: 0,
instructor: 'Peter Richard',
description: %{Lorem ipsum Fusce eu eros neque. Pellentesque sit amet lacus sit amet dolor convallis dapibus sit amet sed ipsum. Fusce interdum egestas dolor ac ultrices. Aliquam euismod magna tortor, in interdum augue blandit et. Curabitur pretium, augue in bibendum lacinia, elit ipsum fringilla justo.})
co.cover.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'img1.jpg')), filename: 'img1.jpg',
content_type: 'image/jpeg'
)
co.save!