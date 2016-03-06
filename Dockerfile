FROM trenpixster/elixir

ENV FOLDER /home/eqc

# install quickcheck mini
RUN mkdir /home/eqc
RUN cd /home/eqc && wget http://www.quviq.com/wp-content/uploads/2015/09/eqcmini-2.01.0.zip && unzip eqcmini-2.01.0.zip && rm -f eqcmini-2.01.0.zip
RUN cd /home/eqc && erl -run eqc_install install -run init stop -noshell

WORKDIR $FOLDER

