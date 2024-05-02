FROM amazon/aws-lambda-python:3.8

RUN /var/lang/bin/python3.8 -m pip install --upgrade pip

RUN yum install git -y

RUN git clone https://github.com/lickelon/spam-docker.git

RUN pip install -r spam-docker/requirements.txt

RUN cp spam-docker/lambda_function.py /var/task/

CMD ["lambda_function.handler"]
