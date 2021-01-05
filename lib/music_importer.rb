
class MusicImporter

    def initialize (path)
        @path = path
    end

    def path
        @path
    end

    def files
        #Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
         files = Dir.glob("#{@path}/*.mp3")
         files.map { |f| File.basename(f) }
    end

    def import
        files.each { |file| Song.create_from_filename(file) }
    end

end