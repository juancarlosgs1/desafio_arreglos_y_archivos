def chart(arreglo)
    n = arreglo.length
    y = arreglo.map{|x| x * 2}
    x = y.map{|e| "|"}
    y.each {|i| puts ("|" + "*" * i )}
    print ">-------------------\n"
end

x = ([5, 3, 2, 5, 10])
chart(x)