class HomeController < ApplicationController
  def index 
     
     @food = [["carrot","apple","banana"],[100,200,300]]
     @breakfast = 0
     @lunch = 0
     @dinner = 0
     @random = rand(0..2)
     @breakfast_list = []
     @lunch_list = []
     @dinner_list = []
     @cnt = 0
     @total = 0
     while true
        @random = rand(0..2)
        if @breakfast <= 800 and @food[1][@random] + @breakfast <=800 and @cnt <= 2
            @breakfast += @food[1][@random]
            @breakfast_list.push(@food[0][@random])
            @cnt += 1
        else
            @cnt = 0
            break
        end
     end
     while true
        @random = rand(0..2)
        if @lunch <= 800 and @food[1][@random] + @lunch <=800 and @cnt <= 2
            @lunch += @food[1][@random]
            @lunch_list.push(@food[0][@random])
            @cnt += 1
        else
            @cnt = 0
            break
        end
     end
     while true
        @random = rand(0..2)
        if @dinner <= 800 and @food[1][@random] + @dinner <=800 and @cnt <= 2
            @dinner += @food[1][@random]
            @dinner_list.push(@food[0][@random])
            @cnt += 1 
        else
            break
        end
     end
     @total = @breakfast + @lunch + @dinner
     
     food_db = FoodDb.new
     if @breakfast_list.count == 3 
        food_db.breakfast_food =  @breakfast_list[0]+"/"+@breakfast_list[1]+"/"+@breakfast_list[2]
     else
        food_db.breakfast_food =  @breakfast_list[0]+"/"+@breakfast_list[1]
     end
     food_db.breakfast = @breakfast
        
     if @lunch_list.count == 3
        food_db.lunch_food = @lunch_list[0]+"/"+@lunch_list[1]+"/"+@lunch_list[2]
     else
        food_db.lunch_food = @lunch_list[0]+"/"+@lunch_list[1]
     end
     food_db.lunch = @lunch
     
     if @dinner_list.count == 3
        food_db.dinner_food = @dinner_list[0]+"/"+@dinner_list[1]+"/"+@dinner_list[2]
     else
        food_db.dinner_food = @dinner_list[0]+"/"+@dinner_list[1]
     end
     food_db.dinner = @dinner
     
     food_db.save
     
     @food_database = FoodDb.all 
  end
end