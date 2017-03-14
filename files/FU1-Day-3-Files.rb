# r - Read only. The file must exist.
# w - Create an empty file for writing.
# a - Append to a file.The file is created if it does not exist.
# r+ - Open a file for update both reading and writing. The file must exist.
# w+ - Create an empty file for both reading and writing.
# a+ - Open a file for reading and appending. The file is created if it does not exist.

#Exercise 1
def write_str_to_file(file_name, string_tbw, number_of_times)
	if File.exist?(filename)
		File.delete(file_name)
	end
	File.open(file_name, 'w') {|f| number_of_times.times{f.write("#{string_tbw} \n")} }
end

write_str_to_file('hello.txt', 'Hello', 15)

#Excercise 2,3,4
def conc_str_to_file(file_name, string_tbc)
	new_file = File.read(file_name)
	new_file.gsub!("\n", " #{string_tbc}\n")
	File.open(file_name, 'r+') {|f| f.write(new_file) }
end

conc_str_to_file('hello.txt', 'Ahmed')