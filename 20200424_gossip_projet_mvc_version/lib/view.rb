class View

  def create_gossip
    puts "Qui est l'auteur du gossip ?"
    print '> '
    param1 = gets.chomp

    puts "Quel est ce gossip ?"
    print '> '
    param2 = gets.chomp

    return params = { author: param1, content: param2 }
  end

  def index_gossips(gossips)
    gossips.each_with_index do |gossip, x|
      print "#{x + 1} - author: "
      print gossip.author
      print ', content: '
      puts gossip.content
    end
  end
end

