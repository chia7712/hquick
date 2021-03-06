FROM chia7712/kafka:latest

# CLONE cquick
RUN mkdir $COMPONENT_HOME/cquick
RUN git clone https://github.com/chia7712/cquick.git $COMPONENT_HOME/cquick

# mkdir for kafka plugin
RUN mkdir -p /opt/connector/plugins

# Set ENV
ENV CQUICK_HOME=$COMPONENT_HOME/cquick
ENV PATH=$PATH:$CQUICK_HOME/bin
# TODO: use another name instead?
ENV USER=root
ENV PROJECT=kafka