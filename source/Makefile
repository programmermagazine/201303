PANDOC = pandoc -s -S 
HTM  = home.html license.html message1.html message2.html message3.html message4.html people1.html people2.html video1.html article1.html article2.html article3.html article4.html info.html
# MD   = message.md message1.md  message2.md  message3.md message4.md people.md people1.md  people2.md video.md video1.md article.md article1.md article2.md article3.md article4.md info.md
MD   = license.md message.md message1.md  message2.md  message3.md message4.md people.md people1.md  people2.md video.md video1.md article.md article1.md article2.md article3.md article4.md info.md reflink.md
HFLAGS = -c ../css/pmag.css -B header.htm -A footer.htm 
RM = rm -f
EOPT = --margin-top=16 --margin-bottom=16 --margin-left=20 --margin-right=20 --pretty-print --base-font-size=9 --font-size-mapping="7, 8, 9, 12, 14, 16, 20, 24" 
EOPT1 = --output-profile=ipad3 --extra-css=../css/pmag.css --margin-top=16 --margin-bottom=16 --margin-left=20 --margin-right=20 --base-font-size=10 --disable-font-rescaling  --font-size-mapping="7, 8, 10, 12, 14, 16, 20, 24"

.PHONY: all clean

all: $(HTM)

epubA4:
	$(PANDOC) -S --toc --epub-metadata=metadata.xml --epub-stylesheet=../css/pmag.css --epub-cover-image=../img/pmag_cover_A4.png toc.md $(MD) -o ../book/pmag201303A4.epub

pdfA4: epubA4
	ebook-convert ../book/pmag201303A4.epub ../book/pmag201303A4.pdf $(EOPT) --paper-size=a4
	
epubipad:
	$(PANDOC) -S --toc --epub-metadata=metadata.xml --epub-stylesheet=../css/pmag.css --epub-cover-image=../img/pmag_cover.jpg toc.md $(MD) -o ../book/pmag201303ipad.epub

pdfipad: epubipad
	ebook-convert ../book/pmag201303ipad.epub ../book/pmag201303ipad.pdf $(EOPT) --output-profile=ipad3
	
mobi: epub
	ebook-convert ../book/pmag201303.epub ../book/pmag201303ipad3.mobi $(EOPT) --output-profile=ipad3
	
tex:
	$(PANDOC) --chapters --template=A4.tex -S --toc $(MD) -o pmag201303A4.tex

xml: 
	$(PANDOC) --chapters -w opendocument -S --toc $(MD) -o ../book/pmag201303A4.xml
	
htm: $(HTM)

shtm: 
	$(PANDOC) --toc $(MD) -o ../book/pmag201303.html $(HFLAGS)

%.html: %.md
	$(PANDOC) $< reflink.md -o ../htm/$@ $(HFLAGS)
	
clean: 
	${RM} ../htm/*.*

