#!/bin/bash
set -e

remote_url="git@sayhell.github.com:AgentNEOTeam/agentneoteam.github.io.git"
name="Say Hell"
email="sayhell@protonmail.com"

bundle exec jekyll build

cd _site
	rm -rf .git && \
	git init && \
	git config user.name "$name" && \
	git config user.email "$email" && \
	git add . && \
	git commit -m "publish" && \
	git remote add origin $remote_url && \
	git push origin -u master -f
