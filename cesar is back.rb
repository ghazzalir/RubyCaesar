puts "Que voudriez vous coder?"
mot = gets.chomp
puts "Quel ecart souhaitez vous avoir"
facteur = gets.chomp.to_i
def cipher(mot, facteur)
nouveau_mot = ""
mot.each_char do |i|
    facteur.times do
        if(i == "z")
            i = "a"
            next
        elsif(i == "Z")
            i = "A"
            next
        end
        i.next!
        i == "%" ? i = " " : ""
    end
    nouveau_mot += i   
end
puts nouveau_mot
end
cipher(mot, facteur)


