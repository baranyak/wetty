#!/bin/bash
echo `lsof -i :3000`
node app.js -p 3000
