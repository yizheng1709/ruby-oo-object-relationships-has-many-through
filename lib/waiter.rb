require 'pry'
class Waiter
    attr_accessor :name, :yrs_experience
    @@all = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end 

    def meals 
        Meal.all.select {|meal| meal.waiter == self}
    end 

    def best_tipper 
        best_tipped_meal = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
        best_tipped_meal.customer 
    end 

    def most_frequent_customers 
        number = 0
        customer = nil
        list_of_customers = meals.collect {|meal| meal.customer}
        binding.pry
    end 
        #go through the meals array and collect
        #an array of customers and count the customers


end