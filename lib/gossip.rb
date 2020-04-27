require 'pry'
require 'csv'

class Gossip

attr_accessor :author, :content


  def initialize(author, content) #On initialise les variables d'instance
    @author = author
    @content = content
  end

	def save #On enregistre dans un fichier CSV les éléments tapés dans le formulaire
		CSV.open("./db/gossip.csv", "ab") do |csv|
			csv << [@author,@content]
		end
	end

	def self.all #On lit le fichier et on transmets les infos dans "all_gossips" 
		all_gossips = []
		CSV.read("./db/gossip.csv"). each do |csv_line|
			all_gossips << Gossip.new(csv_line[0], csv_line[1])
		end
		return all_gossips
	end	

	def self.find(id) # Recherche par id de potin
	end

end

	
# binding.pry
# puts "end of file"
