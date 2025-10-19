#!/bin/bash
set -e

echo "Registering ephemeral runner..."
./config.sh --url "$REPO_URL" --token "$RUNNER_TOKEN" --unattended --ephemeral --name "$(hostname)"

./run.sh
echo "Runner job done, shutting down..."
