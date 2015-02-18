#!/bin/sh

for f; do
    mv "$f" "${f%.MOV}.mov"
done
