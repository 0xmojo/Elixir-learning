handle_open = fn
  {:ok, file } -> "First line: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("Raketfile"))
IO.puts handle_open.(File.open("nonexistent"))

