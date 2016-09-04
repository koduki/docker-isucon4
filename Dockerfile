FROM centos

# Base settings
RUN yum update -y && yum install -y \
 sudo \
 wget \
 unzip \
 python \
 gcc \
 make \
 git 


# install ruby
RUN yum install -y \
 ruby \
 ruby-devel

RUN gem install bundler


# middle
RUN yum install -y \
 nginx \
 mariadb-server \
 mariadb-devel


# apps
RUN git clone --depth 1 https://github.com/isucon/isucon4.git
WORKDIR isucon4/qualifier/webapp/ruby
RUN bundle install

# run
EXPOSE 8080
CMD unicorn
