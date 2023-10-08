# Synthetic topos theory

This is a document about *synthetic topos theory*,
the study of toposes by means of the synthetic method.
Visit <https://uemurax.github.io/synthetic-topos-theory/>
to see what is going on.

## How to build the document

### Preparation

1.  Set up [Racket](https://racket-lang.org/).
2.  Install [MOrg](https://github.com/uemurax/morg).

    ```shell
    raco pkg install https://github.com/uemurax/morg
    ```

### Build

Execute `make`.
It will generate HTML files under directory `_site`.

### Serve

`python3 -m http.server` on `_site`
is a handy way to serve the site locally.

## License

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
