#!/bin/bash

# Get the punkt add-on for nltk. (Also ensures that nltk is installed first.)
pip install --no-cache-dir nltk && \
    export NLTK_DATA_DIR="/home/${NB_USER}/nltk_data" && \
    mkdir -pv "$NLTK_DATA_DIR" && \
    python3 -c "import nltk; nltk.download(\"punkt\", download_dir=\"${NLTK_DATA_DIR}\")" && \
    rm -f "${NLTK_DATA_DIR}/tokenizers/punkt.zip" && \
    (pip cache purge 2>/dev/null || echo "No packages purged") && \
    find /tmp -not -path /tmp -delete
