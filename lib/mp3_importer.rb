require 'pry'
class MP3Importer

  attr_accessor :filename, :path

  def initialize(file_path)
    @path = file_path
  end 
  
  def files
    clean_filename = Dir["#{self.path}/**/*.mp3"]
    clean_filename.map do |filename|
      filename.slice!(self.path+'/')
    end
    clean_filename
  end 
  
  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end 