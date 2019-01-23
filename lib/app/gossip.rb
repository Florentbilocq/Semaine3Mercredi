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

	def self.all
    all_gossips = []
    CSV.open("db/gossip.csv", "r").each do |row|
        all_gossips << Gossip.new(row[0],row[1])
      
    end
    return all_gossips
  end
end