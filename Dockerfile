# Step 1: Use the official lightweight Python image based on Alpine as the Base image
FROM python:3.9-slim


# Step 2: Set the working directory in the container
WORKDIR /app


# Step 3: Copy the requirements file into the container
COPY requirements.txt .


# Step 4: Copy the rest of the application code into the container
COPY . .


# Step 5: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Step 6: Expose the application port, the app will run on.
EXPOSE 5000


# Step 7: Define the command to run the application
CMD ["python", "app.py"]