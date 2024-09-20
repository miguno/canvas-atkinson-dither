# Atkinson dithering example using Canvas, WebWorkers and FileReader

The classic Macintosh 1-bit filter, as used by [Hyperdither](http://www.tinrocket.com/software/hyperdither/).

Compares every pixel to 50% grey, then changes them to either black or white.
The difference between the input and the output is then distributed to the
neighbouring pixels as follows (X is the current pixel):

         X  1/8 1/8
    1/8 1/8 1/8
        1/8

This code uses [Drag and Drop
events](https://web.dev/articles/read-files#toc-selecting-files-dnd),
[WebWorkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)
and the
[FileReader](https://developer.mozilla.org/en-US/docs/Web/API/FileReader) API so
you'll need a current browser to try it.
