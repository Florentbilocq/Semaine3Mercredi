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

end