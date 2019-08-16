text = <<TEXT
  I love Ruby.
  Python is a great language.
  Golang is what I wanna learn next.
TEXT

p text.scan(/[A-Z][A-Za-z]+/) # => ["Ruby"	 "Python"	 "Golang"]

old_syntax = <<~TEXT
  {
    :name => 'Alice'
    :age=>20
    :gender  =>  :female
  }
TEXT

def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end

# puts convert_hash_syntax(old_syntax)
