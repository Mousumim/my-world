#!/usr/bin/env bash
set -eu

# Check the mailshell service is running
nc -z --wait 30 "rspamd-service" "11333" || echo "Mailshell-service 3 not running in time"
nc -z --wait 30 "rspamd-service" "11334" || echo "Mailshell-service 4 not running in time"
nc -z --wait 30 "rspamd-service" "11332" || echo "Mailshell-service 2 not running in time"

cd /integration-tests/
#
## Project setup
#pip3 install --extra-index-url=https://devnexus.engineering.clearswift.org:8443/repository/clearswift-gw-python/simple -e .
#python3 -m grpc_tools.protoc -I../protorepo --python_out=. --grpc_python_out=. ../protorepo/mailshell/v1/mailshell_service.proto
#
## Run integration tests
#behave --junit --junit-directory=/test-results/ tests/features