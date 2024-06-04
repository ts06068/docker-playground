FROM ubuntu

RUN apt-get update -y
RUN apt-get install python3-pip -y
RUN pip install flask --break-system-packages

RUN mkdir -p /home/workspace/
COPY ./app.py /home/workspace/

CMD [ "python3", "/home/workspace/app.py"]

# Image Build
# docker build -t flask-server:1.0.0 .

# Create Container
# docker run -dp 0.0.0.0:5000:5000 flask-server:1.0.0