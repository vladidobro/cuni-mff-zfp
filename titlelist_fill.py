#!/usr/bin/python3
#
# titlelist_fill.py
#		sourcefile
#		targetfile
#		cislopraktik
#		cisloulohy
#		nazevulohy
#		jmeno
#		datummereni
# ./titlelist_fill.py 
#		titlelist.pdf
#		tit.pdf
#		'II'
#		'3'
#		'Tranzistor'
#		'Vladislav Wohlrath'
#		'10. 10. 2016'
#
#
#	potrebuje soubor .arial.ttf kvuli cestine
#
# ./titlelist_fill.py 		titlelist.pdf		tit.pdf		'II'		'3'		'Tranzistor'		'Vladislav Wohlrath'		'10. 10. 2016'


from sys import argv
from PyPDF2 import PdfFileWriter, PdfFileReader
from io import BytesIO
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter
from reportlab.pdfbase import pdfmetrics 
from reportlab.pdfbase.ttfonts import TTFont 

pdfmetrics.registerFont(TTFont('Arial', '.arial.ttf'))

packet = BytesIO()
c = canvas.Canvas(packet)

c.setFont('Arial', 12)
c.drawString(192,603,argv[5]) #nazev ulohy
c.drawString(170,577,argv[6]) #jmeno
c.drawString(194,551,argv[7]) #datum

c.setStrokeColorRGB(1,1,1) #zamazat tecky
c.setFillColorRGB(1,1,1)
c.rect(286,665,15,4,fill=1)
c.rect(158,624,32,4,fill=1)

c.setFillColorRGB(0,0,0)
c.setFont('Times-Bold', 20)
c.drawString(285,666.6,argv[3]) #cislo praktik
c.drawString(155,626,argv[4]) #cislo ulohy

c.setStrokeColorRGB(0,0,0)
c.ellipse(387,570, 419, 587, stroke=1, fill=0) #obor

c.save()

packet.seek(0)
wpdf = PdfFileReader(packet)
watermark = wpdf.getPage(0)



output = PdfFileWriter()
ipdf = PdfFileReader(open(argv[1], 'rb'))
page = ipdf.getPage(0)
page.mergePage(watermark)
output.addPage(page)

with open(argv[2], 'wb') as f:
    output.write(f)