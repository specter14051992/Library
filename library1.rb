class Media
  def set_id(id)
    @myid=id
  end
  def get_id
    return @myid
  end
  def set_name(title)
    @myname=title
  end
  def get_name
    return @myname
  end
  def set_pagequant(pagequant)
    @myquant=pagequant
  end
  def get_pagequant
    return @myquant
  end
  def set_maxterm(maxterm)
    @mymaxterm=maxterm
  end
  def get_maxterm
    return @mymaxterm
  end
  def Media.inherited(Book)
  end
  def Media.inherited(Magazine)
  end
  def Media.inherited(Newspaper)
  end  
end
class Book < Media
  def set_author(author_name)
    
  end
end
