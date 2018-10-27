def my_collect(array)
  x = 0
  new_array = []
  while x < array.length
    new_array << yield(array[x])
    x += 1
  end
  new_array
end

languages = ['ruby', 'javascript', 'python', 'objective-c']

my_collect(languages) do |language|
      language.upcase
end