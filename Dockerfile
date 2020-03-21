FROM gapsystem/gap-docker

COPY --chown=1000:1000 . $HOME/mygapproject

RUN sudo pip3 install ipywidgets RISE

RUN jupyter-nbextension install rise --user --py

RUN jupyter-nbextension enable rise --user --py

RUN git clone https://github.com/iarobles/yags.git

USER gap

WORKDIR $HOME/mygapproject
