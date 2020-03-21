FROM gapsystem/gap-docker

COPY --chown=1000:1000 . $HOME/mygapproject

RUN sudo pip3 install ipywidgets RISE

RUN jupyter-nbextension install rise --user --py

RUN jupyter-nbextension enable rise --user --py

# WORKDIR $HOME/.gap/pkg

#RUN git clone -b ismael https://github.com/iarobles/yags.git $HOME/.gap/pkg

RUN git clone -b ismael https://github.com/iarobles/yags.git

USER gap

WORKDIR $HOME/mygapproject
