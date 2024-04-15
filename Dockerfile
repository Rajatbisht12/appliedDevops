FROM python:3.10.12

WORKDIR /Music_Recommender_System

COPY requirement.txt .

RUN pip install -r requirement.txt

COPY . .

EXPOSE 8501

CMD ["python", "streamlit run app.py"]