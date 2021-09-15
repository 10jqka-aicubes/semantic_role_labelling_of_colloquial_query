FROM hub-dev.hexin.cn/jupyterhub/nvidia_cuda:py36-cuda90-ubuntu16.04-v2

COPY ./ /home/jovyan/semantic_role_labelling_of_colloquial_query

RUN cd /home/jovyan/semantic_role_labelling_of_colloquial_query  && \
    python -m pip install -r requirements.txt 
