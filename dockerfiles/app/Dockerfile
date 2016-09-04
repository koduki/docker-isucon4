FROM centos

# Install base settings
RUN yum update -y && yum install -y \
 sudo \
 wget \
 unzip \
 python \
 gcc \
 make \
 git && \
yum clean all

# Install ruby
RUN yum update -y && yum install -y \
 ruby \
 ruby-devel \
 mariadb-devel && \
yum clean all
RUN gem install bundler

# apps
RUN git clone --depth 1 https://github.com/isucon/isucon4.git
WORKDIR isucon4/qualifier/webapp/ruby
RUN bundle install

# run
ENV ISU4_DB_HOST db
ENV ISU4_DB_PORT 3306
ENV ISU4_DB_USER root
ENV ISU4_DB_PASSWORD admin

EXPOSE 8080
CMD unicorn
