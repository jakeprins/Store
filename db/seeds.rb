inventory = [

  ["Electric keyboard", "This keyboard is capable of recreating a wide range of
    instrument sounds (piano, electric piano, Hammond organ, pipe organ, violin, etc.)
    with less complex sound synthesis. Electronic keyboards are usually dedicated for
    home users, beginners and other non-professional users.", 550, 5, "keyboard.jpg", "Piano's"],


  ["Grand piano", "A big piano with the frame and strings horizontal.
    The strings extending away from the keyboard. The action lies beneath
    the strings, and uses gravity as its means of return to a state of rest.",
     2200, 2, "piano.jpg", "Piano's"],

  ["Classic guitar", "Spanish classi guitar for a warm and southren sound", 300, 4, "guitar.jpg", "Guitars"],

  ["Drumsticks", "High quality drumsticks. Best in the world!", 10, 10, "drumsticks.jpg", "Drums"],

  ["Stradivarius Violin", "The fine and extreme expensive violin. Best in the world!", 10000, 10, "violin.jpg", "Violins"],

  ["Yamaha Violin", "Good quality violin", 350, 10, "yamaha_violin.jpg", "Violins"],

  ["Pearl Drumset", "High quality drumset. Best in the world!", 800, 10, "drums.jpg", "Drums"]
]

categories = [
  "Piano's",
  "Guitars",
  "Drums",
  "Violins"
]

inventory.each do |name, description, price, quantity, image, categories|
  Inventory.create(name: name, description: description, price: price, quantity: quantity, image: image)

  categories.split( ", ").each do |category_name|
    if
      category = Category.find_by( name: category_name)
    else
      category = Category.create( name: category_name)
    end

  end
end
