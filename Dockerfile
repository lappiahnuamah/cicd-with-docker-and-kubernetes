FROM python:3.9-slim

#set working directory
WORKDIR /app

#copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

#copy the rest of the application
COPY . .

#expose port 5000
EXPOSE 5000

#run the application
CMD ["python", "app.py"]


