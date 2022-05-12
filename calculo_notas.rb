require 'csv'

def nota_mas_alta(data)

  n = data.count
    n.times.each do |i|
        data[i]
         x = data [i][1..n-1].max
         print "\t#{x}"
         puts
    end 

end

data = CSV.open('notas.data', converters: :numeric).readlines 
nota_mas_alta(data)

