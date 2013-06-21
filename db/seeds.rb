require 'faker'

def make_fake_stuff()
  @description = ['Shop', 'Cook', 'Eat', 'Drink', 'Walk the dog',
   'Clean the house', 'Pet your kitty', 'Exnteded bio break', 
   'Jedi mind tricks']
  @completed = ['0', '1']
  lists = []
  20.times do 
    lists << List.create(name: Faker::Name.name)
  end 

  
  100.times do

    t = Task.new(
      :description => @description.sample,
      :completed => @completed.sample
    )

    t.list = lists.sample

    t.save!
  end
end

make_fake_stuff
