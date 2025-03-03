echo "Hello!"
sleep 2
echo "This is for Ubuntu-type linux operating systems."
sleep 1
echo "This script will install some basic packages and set up some basic things for making a eaglercraft server...I think."
sleep 5
echo "of course, I am a skid myself, I do not have a full clue what I am doing, but I will try my best :)"
sleep 2
echo "This is made only for APT packages."
sleep 1
echo "Now, lets upgrade/update all of the apt packages."
echo "Please, also make sure that you press Y to install the updates of the packages while inside of the updater."
sleep 3
sudo apt update
        # shellcheck disable=SC2181
        if [ $? -ne 0 ]; then echo "Error: Failed to update package list." && echo "Do you have the APT package manager installed?" && exit 1
    fi
sudo apt upgrade 2>&1
echo "Now with that out of the way, lets actually install the packages. I'm assuming you already have Java."
sleep 4
read -p "Do you want to install the packages? You can manually install them later.? (Y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Installing packages..."
    sleep 2
    sudo apt install htop
    sudo apt install nano
    sudo apt install git
    sudo apt install wget
    sudo apt install tmux
    sudo apt install
else
    echo "Alright! Perfectly fine."
    sleep 2
    exit 1
fi
echo "now! the fun part. :)"
git clone https://github.com/txrx90/EaglercraftX-Server.git
# shellcheck disable=SC2164
cd server-test
cd server && sudo java -jar server.jar
cd ..
cd bungee && sudo java -jar bungee.jar
echo "Now go to the ports area and forward (and make public) ports 25565 and 8081, if you are using codespaces."
echo "If you are using a VPS, home server, or cloud server, you can use the ports 25565 and 25566."
sleep 4
echo "Goodbye!"

