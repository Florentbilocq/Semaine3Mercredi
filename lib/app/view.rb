class View


 def create_gossip
    puts "L'auteur ?"
    print ">"
    author = gets.chomp
    puts "Le potin ?"
    print ">"
    content = gets.chomp
    return params = { content: content, author: author}
  end

  def index_gossips(gossips)
    gossips.each do |i|
      puts "L'auteur: " + i.author + " Son potin: " + i.content
    end
  end



def choice_gossip(gossips)
	puts "Voici la liste des potins"
	j=0
	gossips.each do |i|
		puts "#{j}: L'auteur: #{i.author} Son potin:#{i.content}"
		j += 1
	end
	puts 'quel potin veux tu supprimer?'
	print ">"
	choice = gets.chomp.to_i
	return choice

end

end
