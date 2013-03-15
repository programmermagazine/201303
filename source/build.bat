pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/home.md -o ../htm/home.htm
pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/preface.md -o ../htm/preface.htm
pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/message1.md -o ../htm/message1.htm
pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/message2.md -o ../htm/message2.htm
pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/message3.md -o ../htm/message3.htm
pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/people1.md -o ../htm/people1.htm
pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/people2.md -o ../htm/people2.htm
pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/video1.md -o ../htm/video1.htm
pandoc -s -S -c ../css/pmag.css -B ../htm/header.htm -A ../htm/footer.htm ../md/info.md -o ../htm/info.htm
pandoc -s -S ../md/home.md -o ../odt/home.odt
