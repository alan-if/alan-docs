# Generate HTML with
# embedded images - data-uri
# no-spurious dates - reproducible
for f in design rules actors-in-containers
do
    asciidoctor -r asciidoctor-diagram -a data-uri -a icons=font -a linkattrs -a reproducible -a sectanchors -a toc=left $f.asciidoc
done
