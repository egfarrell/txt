
# internet archive files in "warc" format
    (has old deprecated Coursera MOOCS)
    https://archive.org/details/archiveteam_coursera?sort=titleSorter
    https://gist.github.com/mihaitodor/b0d8c8dd824ab936c057508edec377ad


# extra links: hacker news etc
    https://news.ycombinator.com/item?id=12062116
    https://github.com/internetarchive/warc
    https://github.com/ikreymer/webarchiveplayer

# error reading warc files
    It seems that WARCReader stops short when it reads None
    instead of new headers. I'm quick to blame the custom
    GzipFile handling, because

        import gzip
        import warc

        with gzip.open('my_test_file.warc.gz', mode='rb') as gzf:
            for record in warc.WARCFile(fileobj=gzf):
                print record.payload.read()

    works just fine.

