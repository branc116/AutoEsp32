Start-Process asciidoctor -Wait -ArgumentList "-b html5 -o ./Out/Seminar.html ./Src/Main.adoc" -NoNewWindow
Start-Process asciidoctor -Wait -ArgumentList "-b docbook45 -o ./Out/Seminar.docbook ./Src/Main.adoc" -NoNewWindow
Start-Process asciidoctor-pdf -Wait -ArgumentList "-b pdf -o ./Out/Seminar.pdf ./Src/Main.adoc" -NoNewWindow
Start-Process bash -Wait -ArgumentList "-c 'pandoc --from=docbook --to=docx --output=./Out/Seminar.docx ./Out/Seminar.docbook'" -NoNewWindow