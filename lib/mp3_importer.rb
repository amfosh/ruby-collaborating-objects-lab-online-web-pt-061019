class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = Dir.glob("*.mp3")
  end
    
  def import(list_of_filenames)
    files.each{ |file| Song.new_by_filename(file) }
  end
end
