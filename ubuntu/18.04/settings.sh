# infinite command line history   
echo "# set infinite history size" >> ~/.bashrc
echo "HISTSIZE=" >> ~/.bashrc
echo "HISTFILESIZE=" >> ~/.bashrc
. ~/.bashrc
# install conky-hentry theme
mv conky-henry/ $HOME/ 
cd $HOME/conky-henry/
sh install.sh





   
