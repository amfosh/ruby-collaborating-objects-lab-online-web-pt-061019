class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries files = Dir.glob("*.mp3")
    files
  end
    
  def import(list_of_filenames)
    files.each{ |file| Song.new_by_filename(file) }
  end
end
