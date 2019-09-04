class Table
  def newFlagged
    puts 'a flag'
  end

  def newHidden
    puts 'a hidden'
  end

  def newPinned
    puts 'a pinned'
  end

  def newFeatured
    puts 'a feature'
  end
end

@place = Table.new()

book = [true, false]
truck = {'flagged'=> 'newFlagged', 'hidden'=> 'newHidden', 'pinned' =>'newPinned','featured'=>'newFeatured'}

book.each do |wow|
  truck.each do |state, status|
    @place.send(status)
    puts wow
  end

  #puts state
  #puts status

end
