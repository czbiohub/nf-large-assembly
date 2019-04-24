FROM nfcore/base
LABEL description="Docker image containing all requirements for czbiohub/nf-large-assembly pipeline"
RUN apt-get update && apt-get -y install r-base

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-large-assembly-1.0dev/bin:$PATH
