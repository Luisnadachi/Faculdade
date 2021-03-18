class Set

    attr_accessor :conjuntoA
    attr_accessor :conjuntoB

    def initialize(conjunto1, conjunto2)
        @conjuntoA = conjunto1
        @conjuntoB = conjunto2
    end

    def uniao
        if ((@conjuntoA.empty?) && (@conjuntoB.empty?))
            puts("A ∪ B => { }")
        else
            result = (@conjuntoA + @conjuntoB).uniq
            puts("A ∪ B => " + result.join(", ")) 
        end
    end

    def intercecao
        if ((@conjuntoA.empty?) && (@conjuntoB.empty?))
            puts("A ∪ B => { }")
        else
            result = (@conjuntoA & @conjuntoB)
            if (result.empty?)
                puts("A ∩ B => { }")
            else
                puts("A ∩ B => " + result.join(", "))
            end
        end
    end

    def diferenca
        if ((@conjuntoA.empty?) && (@conjuntoB.empty?))
            puts("A ∪ B => { }")
        else
            result = (@conjuntoA - @conjuntoB)
            puts("A – B => " + result.join(", "))
        end
    end

    def cartesiano
        if ((@conjuntoA.empty?) && (@conjuntoB.empty?))
            puts("A ∪ B => { }")
        else
            result2 = (@conjuntoA).product (@conjuntoB)
            puts("A x B => #{result2}")
        end
    end

    def comprimento
        puts("|A| => #{@conjuntoA.length}")
        puts("|B| => #{@conjuntoB.length}")
    end
end