FROM i3thuan5/rime-taigi-testing-env
RUN git remote add i3thuan5 https://github.com/i3thuan5/librime.git
RUN git fetch i3thuan5 taibun
RUN git checkout i3thuan5/taibun
RUN make
RUN make debug

