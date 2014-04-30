Installation
======

### Installing Ruby on Rails on Ubuntu/Debian
Follow the following [link](https://gorails.com/setup/ubuntu/13.10) to install ROR on your Ubuntu or Debian machine. 

### Get Source code

Clone the source from git from [here](https://github.com/fsmk/camp-web) using the command, 

    git clone https://github.com/fsmk/camp-web.git
     


### Installing all dependent gems
To install all the dependent gems needed for running the camp site, run the following command.

    bundle install
    


### Setting up the development environment

Run the following command to tell Rails that this is a development environment.

    rake db:migrate
    

### Running the Rails Server
Start the server using the following command. 

    rails server
    
After this, the camp website should be running at http://localhost:3000

**Happy Hacking!!!**
