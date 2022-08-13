FROM python:3.9
WORKDIR /app 
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y python3-opencv
EXPOSE 8501
COPY . /app
ENTRYPOINT ["streamlit", "run"]
CMD ["streamlit_app.py"]
