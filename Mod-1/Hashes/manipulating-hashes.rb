#
# Your good buddy Freddy Mercury has recently developed a strawberry allergy!
# You need to delete "strawberry" from his list of favorite ice cream flavors.

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

  contacts["Freddy Mercury"].each do |attribute, value|
      if attribute == :favorite_icecream_flavors
        value.delete_if do |flavor|
          flavor == "strawberry"
      end
    end
  end
  #remember to return your newly altered contacts hash!
  contacts
end

# Use the .values method to collect all of the values of the grocery type keys (:dairy, :vegetables, :meat, :grains).
# The method should return a one-dimensional (or "flat") array that only includes the values (groceries such as "milk"
# and "carrots") without their keys.

def second_challenge
  groceries = {
   dairy: ["milk", "yogurt", "cheese"],
   vegetable: ["carrots", "broccoli", "cucumbers"],
   meat: ["chicken", "steak", "salmon"],
   grains: ["rice", "pasta"]
  }

  groceries.values.flatten


end
