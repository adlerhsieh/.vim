#!/usr/bin/env ruby

require 'fileutils'

def delete_file(file)
  # return unless File.exist? file
  # print "#{file} already exists. Delete and continue? (y/N)"
  # if ['Y', 'y'].include?(gets.chomp)
    FileUtils.rm_rf(file)
  #   puts "#{file} deleted."
  # else
  #   puts "Aborted."
  #   exit 1
  # end
end

def check_command(command)
  unless system(command)
    puts "Missing #{command} command. Install it before proceed"
    exit 1
  end
end

def run(command)
  puts "Running '#{command}'"
  unless system(command)
    puts "Failed. Please retry."
    exit 1
  end
end

host_os = RbConfig::CONFIG["host_os"]
if host_os.include?('linux')
  os = 'linux'
elsif host_os.include?('darwin')
  os = 'mac'
else
  puts 'Sorry, this script is only for Mac or Linux.'
end

check_command('git --version')
check_command('brew --version') if os == 'mac'

delete_file("#{ENV['HOME']}/.vimrc")
delete_file("#{ENV['HOME']}/.vim")

run("git clone https://github.com/adlerhsieh/.vim.git #{ENV["HOME"]}/.vim")
run("cd ~/.vim; git submodule init")
i = 0
while i < 3
  break if system("cd ~/.vim; git submodule update --recursive")
  i += 1
end
if i == 3
  puts "Update failed. Please retry."
  exit 1
end

if os == 'mac'
  run("brew update")
  run("brew install the_silver_searcher")
end

run("cp #{ENV["HOME"]}/.vim/misc/.vimrc #{ENV["HOME"]}/.vimrc")
run("cp #{ENV["HOME"]}/.vim/misc/onedark.vim #{ENV["HOME"]}/.vim/bundle/vim-colorschemes/colors/onedark.vim")

puts "Done!"
puts "Run 'sudo apt-get install silversearcher-ag' before using the search function" if os == 'linux'
