pandoc -s -S -c pmag.css -B header.htm -A footer.htm template.md -o template.htm
pandoc -s -S template.md -o template.odt