user = [
  {
    email: "test@test.com",
    password: "123456",
    password_confirmation: "123456"
  }
]

user.each do |attribute|
  User.create attribute
end

apartments = [
  {
    street: "123 Test Street",
    city: "San Diego",
    state: "CA",
    manager: " Bob",
    email: "bob@test.com",
    price: "1500",
    bedrooms: "2",
    bathrooms: "1",
    pets: "Yes"
  },
  {
    street: "456 Test Street",
    city: "San Diego",
    state: "CA",
    manager: " Dan",
    email: "dan@test.com",
    price: "2100",
    bedrooms: "3",
    bathrooms: "2",
    pets: "No"
  }
]

test_user = User.last

apartments.each do |attribute|
  test_user.apartments.create attribute
end
