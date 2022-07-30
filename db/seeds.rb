# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Run.create({line: "El", route: "Brown Line", run_number: "E102", operator_id: "SJones"})
Run.create({line: "Metra", route: "UPN", run_number: "M405", operator_id: "AJohnson"})
Run.create({line: "Metra", route: "UPN", run_number: "M511", operator_id: "YSmith"})
Run.create({line: "Amtrak", route: "Hiawatha", run_number: "E432", operator_id: "LHill"})
Run.create({line: "El", route: "Red Line", run_number: "A006", operator_id: "Lbeck"})