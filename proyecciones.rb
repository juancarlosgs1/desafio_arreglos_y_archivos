def proyecciones(array,aumento,indice_inicial,indice_final)
    new_array = []
    for i in indice_inicial..indice_final
        new_array.push array[i]
    end
    suma = new_array.sum
    suma + suma * (aumento/100.0)

end

file = File.open("ventas_base.db")
file_data = file.readline
new_array = file_data.split
result = new_array.map {|x| x.to_f}

primera_mitad = proyecciones(result,10,0,5)
segunda_mitad = proyecciones(result,20,6,11)

data = [primera_mitad,segunda_mitad]
string = ""
data.each do |e| 
    string += "#{e} \n"
end
#puts string

File.write("resultados.data", string)