# Installation and configuration of SonarQube (Default Port - 9000)
# Login - Admin
# Password - Admin

$ sudo apt-get update

# Install java

$ sudo apt install openjdk-17-jdk -y
$ sudo apt install open-jdk-jre -y

# Install wget and unzip package

$ sudo apt-get install wget unzip -y

# Download SonarQube

$ wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.0.65466.zip
$ unzip sonarqube-9.9.0.65466.zip
$ cd sonarqube-9.9.0.65466.zip
$ cd bin
$ cd linux-x86-64
$ ./sonar.sh
$ ./sonar.sh console
