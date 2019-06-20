FROM ubuntu:16.04
MAINTAINER dhenandi 

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install ruby -y
RUN gem install prawn --version 1.3.0
RUN gem install addressable --version 2.4.0
RUN gem install prawn-svg --version 0.21.0
RUN gem install prawn-templates --version 0.0.3
RUN gem install prawn --version 2.1.0
RUN gem install prawn-svg --version 0.26.0
RUN gem install prawn-templates --version 0.0.4
RUN gem install asciidoctor-pdf --pre
RUN gem install rouge
RUN gem install pygments.rb
RUN gem install coderay
VOLUME ["/var/www/html", "/dokumen"]

CMD ["/bin/bash"]
