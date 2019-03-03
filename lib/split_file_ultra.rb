# Just split it!
class SplitFileUltra
  def self.split(f_in, chunksize = 1024 * 1024)
    chunks_list = []
    File.open(f_in, 'r') do |fh_in|
      until fh_in.eof?
        chunk_name = "#{File.dirname(f_in)}/#{(File.basename(f_in).split('.')[0..-2]).join}.#{fh_in.pos / chunksize}#{File.extname(f_in)}"
        File.open(chunk_name, 'w') do |fh_out|
          fh_out << fh_in.read(chunksize)
        end
        chunks_list << chunk_name
      end
    end
    chunks_list
  end
end
