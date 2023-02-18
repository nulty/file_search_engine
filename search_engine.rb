class SearchEngine
  def initialize(path)
    @path = path
    @index = {}
  end

  def build_index
    files = Dir.glob("#{@path}/**/*")
    files.each do |file|
      File.open(file).each_line do |line|
        line.downcase.gsub(/[^a-z' ]+/, '').split(/ +/).each do |word|
          (@index[word] ||= Set.new) << file
        end
      end
    end
  end

  def search(term)
    @index[term]
  end
end
