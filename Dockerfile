FROM tsutomu7/scientific-python

ADD data.tgz /home/scientist/
RUN pip install janome && \
    find /opt/conda/lib/python3.5 -name __pycache__ | xargs rm -r
EXPOSE 8888
CMD ["sh", "-c", "jupyter notebook --ip=*"]
