# docker-xslweb

Ubuntu-based container that starts an instance of XSLWeb server.

The XSLWeb server project is at https://github.com/Armatiek/xslweb.  This image follows the instructions at https://armatiek.github.io/xslweb/XSLWeb%20Developer%20Manual.html#installation for the "ready-to-run distribution".

I'm no Docker expert.  I'm able to get done what I need, but always had problems with docker-compose.  I use Docker to package up my images and still rely on shell scripting to execute the big picture.

Suggestions for improvment and evolution are welcome.  I just wanted to get something out here for running the XSLWeb project in Docker.

Build with

>> docker build --tag xslweb:1.0 --label xslweb .

Run

>> docker run -d -v `pwd`/webapps:/xslweb/home/webapps/ -p 9009:8152 --name xslweb xslweb:1.0

Once the container is running, the correct installation can be tested by opening a browser and going to the url http://localhost:9009/app1 (sometimes I hav to use the IP of my Docker container instead of localhost).

Place your application folders inside webapps and address them with http://localhost:9009/*app-folder-name*.

Read the Armatiek XSLWeb developer documentation at https://armatiek.github.io/xslweb/XSLWeb%20Developer%20Manual.html.