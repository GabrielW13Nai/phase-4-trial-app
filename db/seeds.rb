Shop.destroy_all
Confectionary.destroy_all

puts 'seeding....'

3.times{
    Shop.create(
        name: Faker::Ancient.hero,
        location: Faker::Nation.capital_city
    )
}

50.times{
    Confectionary.create(
        name: Faker::Dessert.topping,
        brand: Faker::Company.name,
        shop: Shop.all.sample
    )}

    puts 'Done seeding'
