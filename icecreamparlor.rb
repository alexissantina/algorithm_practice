# Enter your code here. Read input from STDIN. Print output to STDOUT

#input variables
t = 1 #trips to ice cream parlor
m = 1 #total funds
n = 1 #flavor quantity
costs = [] #array of costs

# i is each flavor in array of flavors
# c is cost of icecream for each i

#find two values of i,j where i+j = m
def sum_costs(costs, total_dollars)
#    costs.combination(2).find_index {|i, j| i + j == total_dollars}
    combinations = costs.combination(2).to_a
#    puts combinations
    selected_values = combinations.select {|i, j| i + j == total_dollars}.first.to_a
#    puts selected_values
    flavor1 = costs.find_index (selected_values[0])
    costs_unique = costs.slice(flavor1+1, costs.length - (flavor1+1))
    flavor2 = costs_unique.find_index (selected_values[1])
    flavor2 = flavor2 + (flavor1+1) + 1
    flavor1 = flavor1 + 1
#    puts flavor1
#    puts flavor2
    flavors_string = [flavor1,flavor2].join(" ")
#    puts flavor_array
end

#puts "How many trips are Sunny and Johnny taking to the ice cream parlor?"
t = gets.chomp.to_i

t.times do
    #puts "How many dollars do Sunny and Johnny have to spend?"
    m = gets.chomp.to_i

    #puts "How many flavors of ice cream are available that day?"
    n = gets.chomp.to_i

    #create an array of integers (i) of length n
#    costs = Array.new(n) { rand(1...1000)}
    costs = gets.chomp.split().map {|i| i.to_i}
#    puts costs

flavors = sum_costs(costs, m)
puts flavors
end
