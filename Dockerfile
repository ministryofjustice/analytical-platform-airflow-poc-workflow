FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.4.0

COPY src/opt/analyticalplatform/requirements.txt requirements.txt
RUN <<EOF
pip install --no-cache-dir --requirement requirements.txt
EOF

COPY --chown=nobody:nobody --chmod=0755 src/usr/local/bin/entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
