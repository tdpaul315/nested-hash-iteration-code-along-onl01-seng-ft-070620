contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}
  
def list_1(hash)
  hash.each do |person, data|
  data.each do |attribute, value|
      puts "#{attribute}: #{value}"
    end
  end
end 



def list_2(hash)
  hash.each do |person, data|
  data.each do |attribute, value|
      if attribute == :favorite_ice_cream_flavors
        value.each do |flavor|
          # here, each index element in an ice cream flavor string
          puts "#{flavor}"
        end 
      end
    end
  end
end 



def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    contact_details_hash.each do |attribute, data|
      if attribute == :favorite_ice_cream_flavors
        data.delete_if {|ice_cream| ice_cream == "strawberry"}
     end 
    end
  end
end

remove_strawberry(contacts)


