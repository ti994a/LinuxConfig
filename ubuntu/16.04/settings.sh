# infinite command line history   
echo "# set infinite history size" >> ~/.bashrc
echo "HISTSIZE=" >> ~/.bashrc
echo "HISTFILESIZE=" >> ~/.bashrc
. ~/.bashrc
# move unity desktop launcher bar to bottom of screen
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
# set default Files view to list
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
# install conky-hentry theme
cd conky-henry/
sh install.sh


