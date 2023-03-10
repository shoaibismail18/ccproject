FROM dracarys3/tensorflow:2.2.0-jupyter

LABEL maintainer="Uday Lunawat @dracarys3"

RUN apt-get update -y && apt-get upgrade -y

# setting work directory and copying content
WORKDIR /app
# ADD requirements.txt /app/requirements.txt
# ADD . /app

EXPOSE 8080

CMD streamlit run app.py --server.port 8080 --server.enableXsrfProtection=false --server.enableCORS=false