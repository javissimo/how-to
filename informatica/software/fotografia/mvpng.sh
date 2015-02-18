#!/bin/sh

for f; do
    mv "$f" "${f%.PNG}.png"
done
