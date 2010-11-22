require 'date'
#avail_hash={0=>'not_available', 1=>'available'}
magaz_obj=Array.new
book_obj=Array.new
news_obj=Array.new
person_obj=Array.new
class Media
  def set_mediaid(media_id)
    @myid=media_id
  end
  def set_name(name)
    @myname=name
  end
  def set_pagequant(pagequant)
    @myquant=pagequant
  end
  def set_maxterm(maxterm)
    @mymaxterm=maxterm
  end
  def get_mediaid
    return @myid
  end
  def get_name
    return @myname
  end
  def get_pagequant
    return @myquant
  end
  def get_maxterm
    return @mymaxterm
  end
  def show_all_statuses
    
  end
  def count
    
  end
  def total_count(book_obj,magaz_obj,news_obj)
    @book=book_obj
    @magaz=magaz_obj
    @news=news_obj
    v=@book.size+@magaz.size+@news.size
    return v
  end
  def return()
    
  end
  def total_read_count
    
  end
  def available?
    
  end
  def borrow(person_id)
    #f+=1
    #t=Date.today
    #order_array[f]=Order.new
    #order_array[f].set_loaned_at(t)
    #order_array[f].set_should_returned_at(t+1)
    #order_array[f].set_personid(person_id)
    #order_array[f].set_mediaid(catch) #catch???
  end
  def find_by_name(search_name)
  #book_obj.each do |book|  
  #mediaid,name,pagequant,maxterm,author,year=book.split(",")
  #throw mediaid if name==search_name #throw???
  end
  end
end
class Book < Media 
  def set_author(author)
    @myauthor=author
  end
  def set_year(year)
    @myyear=year
  end
  def get_author
    return @myauthor
  end
  def get_year
    return @myyear
  end

end
class Newspaper < Media
  def set_date(date)
    @mydate=date
  end
  def set_anec(anec)
    @myanec=anec
  end
  def get_date
    return @mydate
  end
  def get_anec
    return @myanec
  end
end
class Magazine < Media
  def set_publ(publ)
    @mypubl=publ
  end
  def set_number(number)
    @mynumber=number
  end
  def set_theme(theme)
    @mytheme=theme
  end
  def get_pub
    return @mypubl
  end
  def get_number
    return @mynumber
  end
  def get_theme
    return @mytheme
  end
end
class Person
  def set_personid(id)
    @person_id=id
  end
  def set_gender(gender)
    @mygender=gender
  end
  def set_age(age)
    @myage=age
  end
  def set_full_name(full_name)
    @myfull_name=full_name
  end
  def set_mcount(media_count)
    @medcount=media_count
  end
  def get_personid
    return @person_id
  end
  def get_gender
    return @mygender
  end
  def get_age
    return @myage
  end
  def get_fullname
    return @myfull_name
  end
  def get_mcount
    return media_count
  end
end
class Order
  def set_loaned_at(loaned_at)
    @loaned=loaned_at
  end
  def set_returned_at(returned_at)
    @returned=returned_at
  end
  def set_should_returned_at(should_returned_at)
    @should_ret=should_returned_at
  end
  def set_personid(person_id)
    @personid=person_id
  end
  def set_mediaid(media_id)
    @mediaid=media_id
  end
  def get_loaned
    return @loaned
  end
  def get_returned
    return @returned
  end
  def get_sh_returned
    return @should_ret
  end
  def get_person
    return @person_id
  end
  def get_media
    
    return @media_id
  end
end
book_array=["1,Voyna i mir,1000,20,L.N. Tolstoy,2006", "2,Troe v lodke ne schitaya sobaki,300,7,Djerom K. Djerom,1984", "3,10000 l'e pod vodoy,400,20,Jyul' Vern,2004", "4,Stihi,400,20,A.S. Pushkin,2004"]
magaz_array=["4,Ohota i rybalka,40,7,raketa,1,hobbi", "5,Mountain Bike,60,7,raketa,12,sport", "6,Sobytiya,55,5,raketa,5,politika"]
news_array=["7,Vecherniy Kiev,16,2,10-11-2010,1", "8,Sbornik krossvordov,12,3,03-11-2010,1", "9,Babushka,20,4,04-11-2010,0"]
person_array=["0,M,30,Ivanov Ivan Ivanovich,0", "1,M,24,Gudz' Poligraf Evgrafovich,0", "3,F,99,Aleksandrova Aleksandra Aleksandrovna,0"]
i=-1
book_array.each do |book|
i+=1
mediaid,name,pagequant,maxterm,author,year=book.split(",")
book_obj[i]=Book.new
book_obj[i].set_mediaid(mediaid)
book_obj[i].set_name(name)
book_obj[i].set_pagequant(pagequant)
book_obj[i].set_maxterm(maxterm)
book_obj[i].set_author(author)
book_obj[i].set_year(year)
end
j=-1
news_array.each do |news|
j+=1
mediaid,name,pagequant,maxterm,date,anec=news.split(",")
news_obj[j]=Newspaper.new
news_obj[j].set_mediaid(mediaid)
news_obj[j].set_name(name)
news_obj[j].set_pagequant(pagequant)
news_obj[j].set_maxterm(maxterm)
news_obj[j].set_date(date)
news_obj[j].set_anec(anec)
end
z=-1
magaz_array.each do |magaz|
z+=1
mediaid,name,pagequant,maxterm,publ,number,theme=magaz.split(",")
magaz_obj[z]=Magazine.new
magaz_obj[z].set_mediaid(mediaid)
magaz_obj[z].set_name(name)
magaz_obj[z].set_pagequant(pagequant)
magaz_obj[z].set_maxterm(maxterm)
magaz_obj[z].set_publ(publ)
magaz_obj[z].set_number(number)
magaz_obj[z].set_theme(theme)
end
s=-1
person_array.each do |person|
s+=1
id,gender,age,full_name,media_count=person.split(",")
person_obj[s]=Person.new
person_obj[s].set_personid(id)
person_obj[s].set_gender(gender)
person_obj[s].set_age(age)
person_obj[s].set_full_name(full_name)
person_obj[s].set_mcount(media_count)
end
