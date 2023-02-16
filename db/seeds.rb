# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

items = Item.create([{ id: 1, name: '色々な商品', price: 4000, stock: 10, image_name: 'azarashi.png', sale: false, review: false, sale_price: nil },
                     { id: 2, name: '限定商品', price: 2000, stock: 10, image_name: 'azarashi.png', sale: true, review: true, sale_price: 1800 },
                     { id: 3, name: 'セール商品', price: 5000, stock: 10, image_name: 'azarashi.png', sale: true, review: false, sale_price: 2500 },
                     { id: 4, name: '人気商品', price: 4000, stock: 10, image_name: 'azarashi.png', sale: false, review: true, sale_price: nil },
                     { id: 5, name: 'セール商品', price: 5000, stock: 10, image_name: 'azarashi.png', sale: true, review: false, sale_price: 2500 },
                     { id: 6, name: '色々な商品', price: 28_000, stock: 10, image_name: 'azarashi.png', sale: false, review: false, sale_price: nil },
                     { id: 7, name: '限定商品', price: 2000, stock: 10, image_name: 'azarashi.png', sale: true, review: true, sale_price: 1800 },
                     { id: 8, name: '人気商品', price: 4000, stock: 10, image_name: 'azarashi.png', sale: false, review: true, sale_price: nil }])
