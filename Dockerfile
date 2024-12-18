FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base@sha256:383b3f70ccd2e508926784e54e877d780977bfe2ec607122cc97dc7b259f9c09

COPY src/opt/analytical-platform/requirements.txt /opt/analytical-platform/requirements.txt
RUN <<EOF
pip install --no-cache-dir --requirement /opt/analytical-platform/requirements.txt
EOF
