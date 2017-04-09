# Install Polymer CLI, https://www.polymer-project.org/1.0/start/first-element/intro
FROM node:6

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	   git \
	&& rm -rf /var/lib/apt/lists/*
RUN npm install -g bower polymer-cli
EXPOSE 8000 

# Create app directory

RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app
CMD ["polymer", "serve", "--port", "8000"]