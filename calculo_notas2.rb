require 'csv'

def nota_mas_alta2(data)

    n = data.count

    n.times.each do |i|
        x =  "#{data[i][0] + " " + "#{data[i][1..n-1].max} "}"
        print x
      puts
       #return x
    end

end

data = CSV.open('notas.data', converters: :numeric).readlines 
nota_mas_alta2(data)