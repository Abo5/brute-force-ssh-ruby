# brute-force-ssh-ruby
This script is a Ruby program designed for testing and attempting SSH password authentication against a target host using a provided wordlist. It uses the net/ssh and net/ping libraries for SSH communication and network connectivity testing. The main purpose of the script is to demonstrate an example of brute-forcing SSH passwords using a wordlist.

# Specifications and Features

The script uses the Ruby programming language.
It requires the net/ssh and net/ping libraries to be installed.
The script takes three command-line arguments: target IP address, username, and the path to a wordlist file.
It performs network connectivity testing by sending ICMP pings to the target host (3 pings and requires at least 3 successful pings).
If the network connectivity is sufficient, it attempts SSH authentication using the supplied username and passwords from the provided wordlist.
The script prints each attempted password along with its index.
If successful, it displays the found password and exits.
If no correct password is found, it prints a message indicating that the password wasn't found in the list.
How to Use

# To use this script, follow these steps:

Make sure you have Ruby installed on your system.

Install the required gems by running: gem install net-ssh net-ping colorize

Save the script to a file (e.g., ssh_bruteforce.rb).

Make the script executable: chmod +x ssh_bruteforce.rb

Run the script with three command-line arguments: target IP, username, and wordlist path.

Example usage: ./ssh_bruteforce.rb 192.168.1.1 admin wordlist.txt

# Disclaimer

Please note that this script is provided for educational and informational purposes only. Unauthorized access or unauthorized use of this script against systems you do not have explicit permission to test or access is illegal and unethical. Always ensure you have proper authorization before conducting any security testing on systems or networks.

By using this script, you acknowledge the importance of ethical and legal usage and take responsibility for any actions you perform with it. 

Remember to respect the privacy and security of systems and networks and always follow best practices for responsible cybersecurity research.

Install Ruby: Make sure you have Ruby installed on your system. If not, you'll need to install it before you can run the script. You can download and install Ruby from the official website: https://www.ruby-lang.org/en/documentation/installation/
Install Required Gems: Open your terminal or command prompt and install the required gems (net-ssh, net-ping, and colorize) by running the following command:
```
gem install net-ssh net-ping colorize
```
Save the Script: Save the provided script to a file. You can name the file something like ssh_bruteforce.rb.
Make the Script Executable: In your terminal or command prompt, navigate to the directory where you saved the script and make it executable with the following command:
```
chmod +x ssh_bruteforce.rb
```
Run the Script: Run the script with the necessary command-line arguments. The script requires three arguments: target IP address, username, and the path to a wordlist file. For example:
```
./ssh_bruteforce.rb 192.168.1.1 admin wordlist.txt
```
Replace 192.168.1.1 with the actual IP address of the target, admin with the desired username, and wordlist.txt with the path to your wordlist file.
Observe the Output: The script will start running and will display its progress in the terminal. It will attempt SSH password authentication using the provided wordlist. If a correct password is found, it will display the password and exit. If no correct password is found, it will indicate that the password wasn't found in the list.
Please remember to use this script responsibly and only on systems and networks that you have explicit permission to test. Unauthorized access or usage is against ethical and legal guidelines. Always follow best practices for ethical hacking and responsible cybersecurity research.


