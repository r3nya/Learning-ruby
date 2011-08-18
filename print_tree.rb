def print_tree(dir, lvl = 0)
    return unless File.directory?(dir)

    Dir.open(dir).each { |entry|
        next if entry =~ /^\./ # Do not show hidden files
        file_name = File.join(dir, entry)
        p "  " * lvl + entry
        if File.directory?(file_name)
            print_tree(file_name, lvl + 1)
        end
    }
end

print "Enter directory (example: /etc ): "
dir = gets.chomp
print_tree(dir)
