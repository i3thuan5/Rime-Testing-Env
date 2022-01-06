# rime_taigi_testing_env
Dockerfile
```
export sikan=`date '+%F'`
docker build -t i3thuan5/rime-taigi-testing-env:$sikan .
docker push i3thuan5/rime-taigi-testing-env:$sikan
docker tag i3thuan5/rime-taigi-testing-env:$sikan i3thuan5/rime-taigi-testing-env:latest
docker push i3thuan5/rime-taigi-testing-env
```
