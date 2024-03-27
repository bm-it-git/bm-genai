# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the content of the local app-folder directory to the working directory in the container
COPY . .

# Install any needed dependencies specified in requirements.txt
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip install langchain && \
    pip install langchain --upgrade

# Expose port 8501
#EXPOSE 8501

# Run the Streamlit app
#ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
CMD ["streamlit", "run", "app.py"]
