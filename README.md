**Git Important Command for ubantu or linux**

install git on ubantu:

    sudo apt-get install git

check version of git:

    git --version

config git command:

    git config --global user.name "your_user_name"
    git config --global user.email "your_email@example.com"

verfy congig list:

    git config --list

shows where gitconfig file is:

    first got home directory
    
        pwd
        
            ls -al


open gitconfig file in gedit text editor:

    gedit .gitconfig

To see if existing SSH keys are present:

    ls -al ~/.ssh
    
    # Lists the files in your .ssh directory, if they exist
    #more details https://help.github.com/en/articles/connecting-to-github-with-ssh

To generate ssh key:

    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

install xclip for copy toll:

    sudo apt-get install xclip

copy through xclip generated ssh key:

    xclip -sel clip < ~/.ssh/id_rsa.pub
    # Copies the contents of the id_rsa.pub file to your clipboard

add ssh key in github:

    navigate -> profile > settings > SSH and GPG keys > New SSH key
    #click on button  New SSH key or Add SSH key.


Testing your SSH connection:

    ssh -T git@github.com
    # Hi your_user_name_come ! You've successfully authenticated, but GitHub does not provide shell access.
    # more details on https://help.github.com/en/articles/testing-your-ssh-connection

after that you clone your private repo:

    git clone git@github.com:user_name/repo_name.git




