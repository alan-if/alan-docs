# Generate HTML with
# embedded images - data-uri
# no-spurious dates - reproducible
asciidoctor -r asciidoctor-diagram -a data-uri -a icons=font -a reproducible -a sectanchors -a toc=left design.asciidoc
