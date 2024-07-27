# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Install dbt-snowflake
RUN python -m venv /opt/dbt_venv \
    && /opt/dbt_venv/bin/pip install --no-cache-dir dbt-snowflake

# Set the virtual environment to be used for subsequent commands
ENV PATH="/opt/dbt_venv/bin:$PATH"

# Copy the rest of your application code to the container
COPY . .

# RUN dbt deps
RUN python -m venv dbt_venv && source dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-snowflake && deactivate

# Set the entry point for the container
CMD ["dbt", "--version"]
