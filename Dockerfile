#/DockerHubからpythonのイメージ元をダウンロード
FROM python:3.9.5-alpine

# .pycを生成しない
# 標準出力・標準エラーのストリームバッファリングをしない？
# インタプリタのUTF-8モードを有効化
ENV PYTHONDONTWRITEBYTECODE = 1 \
    PYTHONUNBUFFERED=1 \
    PYTHONUTF8=1 \ 

# RUN apt-get update
# RUN apt-get install


RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code
RUN pip install -r requirements.txt
ADD . /code/