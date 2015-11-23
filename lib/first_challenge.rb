require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  # iterate over hash contacts
  contacts.each do |key, value|
    # interate through the values (Jon, Freddy)
    value.each do |the_key, the_value|
      # condition to check if The_value is an array and contains strawberry
      if the_value.class == Array && the_value.include?("strawberry")
        the_value.delete "strawberry"
      end
     end
   # end
    #remove strawberry
    # if key == "Jon Snow"
    #   value.delete_if do |the_key, the_value|
    #     the_value == "strawberry"
    #   end
    # end
  end
  #remember to return your newly altered contacts hash!
  contacts
  #binding.pry
end

