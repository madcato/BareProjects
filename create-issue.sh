#!/bin/bash
read -p "Enter issue title: " title
id=$(date +%s)
filename="issues/issue_$id.md"

echo "# $title

## Details
- **Status**: Open
- **Priority**: 
- **Assigned to**: 

## Description

## Tasks
- [ ] " > $filename

echo "Issue created: $filename"