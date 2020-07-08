FROM i3thuan5/rime-taigi-testing-env:kati
RUN git remote add i3thuan5-kati https://github.com/i3thuan5/librime.git
RUN git fetch i3thuan5-kati taibun
RUN git checkout i3thuan5-kati/taibun
RUN make
RUN make debug

