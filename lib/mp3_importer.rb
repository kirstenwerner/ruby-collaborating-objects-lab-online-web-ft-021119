require 'pry'
class MP3Importer

  attr_accessor :filename, :path
  @@list_of_filenames = [] 
  
  def initialize(file_path)
    @path = file_path
  end 
  
  def files
    Dir["#{self.path}/**/*.mp3"] 
    # Dir["/path/to/search/**/*.rb"]
    # binding.pry
  end 
  
  def import
    @@list_of_filenames.each {|filename| Song.new_by_filename(filename)}
  end
  
end 