# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Clear existing data
Rating.destroy_all
Product.destroy_all

# Ruby-related products
products = [
  { name: "Ruby Programming Language Book", price: 49.99 },
  { name: "Ruby Gemstone Necklace", price: 299.99 },
  { name: "The Ruby Way - Third Edition", price: 44.95 },
  { name: "Natural Ruby Crystal", price: 149.50 },
  { name: "Ruby on Rails Tutorial", price: 39.99 },
  { name: "Polished Ruby Ring", price: 599.99 },
  { name: "Eloquent Ruby Book", price: 42.00 },
  { name: "Raw Ruby Specimen", price: 89.99 },
  { name: "Design Patterns in Ruby", price: 47.50 },
  { name: "Ruby Earrings Set", price: 249.99 },
  { name: "Practical Object-Oriented Design in Ruby", price: 44.99 },
  { name: "Burmese Ruby Pendant", price: 899.99 },
  { name: "Metaprogramming Ruby", price: 41.99 },
  { name: "Ruby Bracelet", price: 399.99 },
  { name: "The Well-Grounded Rubyist", price: 49.95 },
  # Merchandise
  { name: "Ruby Logo Mug - Ceramic 11oz", price: 14.99 },
  { name: "Ruby Developer T-Shirt - Black", price: 24.99 },
  { name: "Ruby Developer T-Shirt - Red", price: 24.99 },
  { name: "Rails Framework Hoodie", price: 49.99 },
  { name: "Ruby Logo Sticker Pack (10 pcs)", price: 7.99 },
  { name: "Ruby Gemstone Coffee Mug", price: 12.99 },
  { name: "Keep Calm and Code Ruby T-Shirt", price: 22.99 },
  { name: "Ruby Developer Laptop Sleeve", price: 29.99 },
  { name: "Rails Conference Tote Bag", price: 18.99 },
  { name: "Ruby Logo Baseball Cap", price: 19.99 },
  { name: "I Love Ruby Travel Mug - Insulated", price: 21.99 },
  { name: "Ruby Programming Socks (Pair)", price: 9.99 },
  { name: "Ruby Code Syntax Poster - 24x36", price: 16.99 },
  { name: "Ruby Developer Zip Hoodie", price: 54.99 },
  { name: "Ruby Gemstone Water Bottle", price: 19.99 }
]

created_products = products.map do |product_data|
  Product.create!(product_data)
end

# Add ratings for each product
created_products.each do |product|
  # Random number of ratings between 3 and 8
  num_ratings = rand(3..8)

  num_ratings.times do
    # More likely to be 4-5 stars (weighted random)
    stars = [ 3, 4, 4, 4, 5, 5, 5, 5 ].sample
    Rating.create!(product: product, stars: stars)
  end
end

puts "Created #{Product.count} products with #{Rating.count} ratings"
