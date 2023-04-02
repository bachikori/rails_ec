# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Item.create!([
               { name: '色々な商品', price: 4000, stock: 30, image_name: 'azarashi.png', sale: false, review: false,
                 sale_price: nil },
               { name: '限定商品', price: 2000, stock: 30, image_name: 'azarashi.png', sale: true,
                 review: true, sale_price: 1800 },
               { name: 'セール商品', price: 5000, stock: 30, image_name: 'azarashi.png', sale: true,
                 review: false, sale_price: 2500 },
               { name: '人気商品', price: 4000, stock: 30, image_name: 'azarashi.png', sale: false,
                 review: true, sale_price: nil },
               { name: 'セール商品', price: 5000, stock: 30, image_name: 'azarashi.png', sale: true,
                 review: false, sale_price: 2500 },
               { name: '色々な商品', price: 2800, stock: 30, image_name: 'azarashi.png', sale: false,
                 review: false, sale_price: nil },
               { name: '限定商品', price: 2000, stock: 30, image_name: 'azarashi.png', sale: true,
                 review: true, sale_price: 1800 },
               { name: '人気商品', price: 4000, stock: 30, image_name: 'azarashi.png', sale: false,
                 review: true, sale_price: nil }
             ])
