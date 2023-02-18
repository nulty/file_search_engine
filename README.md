# File Search Engine

Implement a Mini Search Engine

Write a Ruby class that takes a directory of text files and allows users to search for a specific term across all of the files. The class should be able to handle large directories with many files, so efficiency is important.

The class should have the following methods:

 - `initialize(directory)` - takes the path to the directory of text files as an argument
 - `build_index` - builds an index of all the terms in the text files and the files they appear in
 - `search(term)` - returns a list of filenames that contain the given term

Example usage:


```ruby
search_engine = MiniSearchEngine.new("/path/to/directory")
search_engine.build_index
search_engine.search("ruby")
# returns ["file1.txt", "file3.txt"]
```
