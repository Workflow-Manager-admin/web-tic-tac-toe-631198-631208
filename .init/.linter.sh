#!/bin/bash
cd /tmp/kavia/workspace/code-generation/web-tic-tac-toe-631198-631208/frontend_next_js
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

