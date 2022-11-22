FROM public.ecr.aws/lambda/python:3.8

RUN yum update -y
RUN yum install -y mesa-libGL

COPY requirements.txt ./

#RUN python3.8 -m pip install --upgrade pip
RUN python3.8 -m pip install -r requirements.txt
COPY . ./
CMD ["lambda_function.lambda_handler"]