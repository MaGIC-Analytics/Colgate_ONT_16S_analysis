FROM continuumio/miniconda3 #example base image- the prebuilt miniconda
LABEL authors="Your name" \
    description="Description of what this does"

COPY environment.yml
RUN conda env create -f /environment.yml && conda clean -a
RUN apt-get install -y #put all of your apt installs in one line here, best practice for dockerfile
ENV PATH /opt/conda/envs/template-project/bin:$PATH