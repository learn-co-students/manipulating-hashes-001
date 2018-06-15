
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
  contacts.each do |person, contact_details|
     contact_details.each do |attribute, data|
       if attribute == :favorite_ice_cream_flavors
         data.delete_if {|ice_cream| ice_cream == "strawberry"}
       end
     end
   end
contacts
end
