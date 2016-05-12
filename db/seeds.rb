category_names = [
  "Pianos",
  "Guitars",
  "Drums",
  "Violins"
]

category_names.each do | name |
   Category.create!( name: name)
end

categories = {}

categories["Violins"] = [

  ["Yamaha Violin", "Good quality violin", 350, 10, "http://res.cloudinary.com/dpwjutqio/image/upload/v1463050413/yamaha_violin_hsakgi.jpg"],
  ["Stradivarius Violin", "The fine and extreme expensive violin. Best in the world!", 10000, 10, "http://res.cloudinary.com/dpwjutqio/image/upload/v1463050413/violin_jswxrg.jpg"]
]

categories["Pianos"] = [
  ["Electric keyboard", "This keyboard is capable of recreating a wide range of
    instrument sounds (piano, electric piano, Hammond organ, pipe organ, violin, etc.)
    with less complex sound synthesis. Electronic keyboards are usually dedicated for
    home users, beginners and other non-professional users.", 550, 5, "http://res.cloudinary.com/dpwjutqio/image/upload/v1463050412/keyboard_muah1m.jpg"],

  ["Grand piano", "A big piano with the frame and strings horizontal.
    The strings extending away from the keyboard. The action lies beneath
    the strings, and uses gravity as its means of return to a state of rest.",
     2200, 2, "http://res.cloudinary.com/dpwjutqio/image/upload/v1463050413/piano_rghuu8.jpg"]
]

categories["Guitars"] = [
  ["Classic guitar", "Spanish classi guitar for a warm and southren sound", 300, 4, "http://res.cloudinary.com/dpwjutqio/image/upload/v1463050413/guitar_ckavon.jpg"]
]

categories["Drums"] = [
  ["Drumsticks", "High quality drumsticks. Best in the world!", 10, 10, "http://res.cloudinary.com/dpwjutqio/image/upload/v1463050412/drumsticks_xqemqg.jpg"],
  ["Pearl Drumset", "High quality drumset. Best in the world!", 800, 10, "http://res.cloudinary.com/dpwjutqio/image/upload/v1463050413/drums_uqwx3s.jpg"]
]

categories.each do | category_name, product|
  category = Category.where( name: category_name).first

  byebug if category.nil?

  product.each do |name, description, price, quantity, image|
    product = Product.create(name: name, category_id: category.id, description: description, price: price, quantity: quantity, image: image)
  end
end



# product.each do |name, description, price, quantity, image, categories|
#   Product.create(name: name, description: description, price: price, quantity: quantity, image: image)
#
#   categories.split( ", ").each do |category_name|
#     if
#       category = Category.find_by( name: category_name)
#     else
#       category = Category.create( name: category_name)
#     end
#
#   end
# end
