require 'csv'
 
    filename  = File.join Rails.root, "lib/tasks/seeds/pokemon.csv"
        CSV.freach(filename, headers: true) do |row| 
        Pokemon.create( 
                number: row[0],
                name: row[1],
                type1: row[2],
                type2: row[3],
                total: row[4],
                hp: row[5],
                attack: row[6],
                defense: row[7],
                sp_Atk: row[8],
                sp_Def: row[9],
                speed: row[10],
                generation: row[11],
                legendary: row[12]  
        )
    end

