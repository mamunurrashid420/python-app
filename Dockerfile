FROM python:3.8-slim

WORKDIR /app

# Copy only the requirements file first to leverage Docker caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set the default command to run your application
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
