#!/bin/bash
while docker stack ps ai_toolkit >/dev/null 2>&1; do
  echo "⏳ ai_toolkit stack is still removing..."
  docker stack ps ai_toolkit --format "table {{.Name}}\t{{.CurrentState}}"
  echo "Waiting 5 seconds..."
  sleep 5
done
echo "✅ ai_toolkit stack has been removed"