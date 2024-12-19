FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.4.0-rc1

COPY src/opt/analyticalplatform/requirements.txt requirements.txt
RUN <<EOF
pip install --no-cache-dir --requirement requirements.txt
EOF
