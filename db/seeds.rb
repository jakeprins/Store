inventory = [

  ["Electric keyboard", "This keyboard is capable of recreating a wide range of
    instrument sounds (piano, electric piano, Hammond organ, pipe organ, violin, etc.)
    with less complex sound synthesis. Electronic keyboards are usually dedicated for
    home users, beginners and other non-professional users.", 550, 5, "keyboard.jpg"],

  ["Grand piano", "A big piano with the frame and strings horizontal.
    The strings extending away from the keyboard. The action lies beneath
    the strings, and uses gravity as its means of return to a state of rest.",
     2200, 2, "piano.jpg"],

  ["Classic guitar", "Spanish classi guitar for a warm and southren sound", 300, 4, "guitar.jpg"],

  ["Drumsticks", "High quality drumsticks. Best in the world!", 10, 10, "drumsticks.jpg"],

  ["Stradivarius Violin", "The fine and extreme expensive violin. Best in the world!", 10000, 10, "violin.jpg"],

  ["Yamaha Violin", "Good quality violin", 350, 10, "yamaha_violin.jpg"],

  ["Pearl Drumset", "High quality drumset. Best in the world!", 800, 10, "drums.jpg"]
]

inventory.each do |name, description, price, quantity, image|
  Inventory.create(name: name, description: description, price: price, quantity: quantity, image: image)
end
