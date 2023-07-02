# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Parent.destroy_all
Child.destroy_all

parent1 = Parent.create!(name: "Parent 1")
parent2 = Parent.create(name: "Parent 2")

child1 = Child.create(name: "Child 1", parent: parent1)
child2 = Child.create(name: "Child 2", parent: parent1)
child3 = Child.create(name: "Child 3", parent: parent2)
child4 = Child.create(name: "Child 4", parent: parent2)
child5 = Child.create(name: "Child 5", parent: parent2)
