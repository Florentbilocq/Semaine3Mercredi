class Gossip

	attr_reader :content, :author

	def initialize(author, content)
		@content = content
		@author = author
	end

	def save
		CSV.open("db/gossip.csv", "a") do |csv|
			csv << [self.author, self.content]
		end
	end

	def self.overwrite(new)
    CSV.open("db/gossip.csv", "wb") {|csv| new.each {|elem| csv << [elem.author, elem.content]} }
  	end


	def self.all
		all_gossips = []
		CSV.open("db/gossip.csv", "r").each do |row|
			all_gossips << Gossip.new(row[0],row[1])

		end

		return all_gossips


	end

	def self.delete(d)
		
    all = Gossip.all
    if d == 0
      all = all[1..-1]
    else
      all = all[0..d-1] + all[d+1..-1]
    end
    Gossip.overwrite(all)
	end
	

end