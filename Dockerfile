FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get update && apt-get install -y qt5-default libqt5webkit5 \
    libqt5widgets5 libqt5qml5 libqt5quick5 libqt5x11extras5 qml-module-qtquick2  \
    qml-module-qtquick-controls qml-module-qtquick-window2 qml-module-qtquick-dialogs qml-module-qtquick-layouts

RUN wget -q https://download.teamviewer.com/download/linux/teamviewer_amd64.deb && \
    dpkg -i teamviewer_amd64.deb && rm -rf teamviewer_amd64.deb
    
   
# install dependencies
RUN apt-get update \
    && apt-get install -y  matchbox twm \
&& apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# CMD [ "teamviewer", "daemon", "start" ]

# CMD sudo service teamviewer daemon start && teamviewer
