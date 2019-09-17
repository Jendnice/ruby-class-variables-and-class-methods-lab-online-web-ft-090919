class Song 

attr_accessor :name, :artist, :genre

@@count = 0 
@@genres = []
@@artists = []


 def initialize (name, artist, genre)
   @name = name
   @artist = artist
   @genre = genre
   @@count += 1 
   @@genres << @genre 
   @@artists << @artist
 end 

 def self.count
   @@count
 end 

 def self.genres
   @@genres.uniq 
 end 
  
  def self.artists
    @@artists.uniq 
  end 
  
  def self.genre_count
   @@genre_count = {}
  
    @@genres.each do |genre|
     if @@genres[genre].include?(@genre)
       @@genre_count[@genre] + 1
     else 
      @@genre_count[@genre] = 1 
     end 
    end 
    @@genre_count
  end 
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade 
    if @roster.include?(grade) 
       @roster[grade] << student_name
    else  
     @roster[grade] = []
     @roster[grade] << student_name
    end 
  end
  
  
  
end 


