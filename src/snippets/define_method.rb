class Foo
  %w(foo bar baz).each do |v|
    define_method(v) do
      puts "Hi, I am #{v}"
    end
  end
end
