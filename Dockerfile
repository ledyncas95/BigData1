FROM python:3.7.7-slim-buster
LABEL MAINTAINER="Ledyn moreno <ledyncas95@correo.ugr.es>"
	
ENV PYTHON_PACKAGES="\
    numpy==1.18.1 \
	matplotlib==3.2.0 \
	scipy==1.4.1\
	scikit-learn==0.22.2\
	pandas==1.0.1\
	nltk==3.4.5"	
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
	&&pip3 install --no-cache-dir $PYTHON_PACKAGES \
    && apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Crea usuario local
RUN useradd --create-home pyuser
WORKDIR /home/pyuser
USER pyuser
COPY Myscript.py /home/pyuser
CMD [ "python","Myscript.py"]