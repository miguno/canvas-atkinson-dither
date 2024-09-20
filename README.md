# Atkinson dithering example

The classic Macintosh 1-bit filter, as used by
[HyperDither](https://www.tinrocket.com/content/hyperdither/).

Compares every pixel to 50% grey, then changes them to either black or white.
The difference between the input and the output is then distributed to the
neighbouring pixels as follows (X is the current pixel):

```
     X  1/8 1/8
1/8 1/8 1/8
    1/8
```

## How to run

Requires `npm`.

```
./start.sh
```

## Implementation

This code uses [Drag and Drop
events](https://web.dev/articles/read-files#toc-selecting-files-dnd),
[WebWorkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)
and the
[FileReader](https://developer.mozilla.org/en-US/docs/Web/API/FileReader) API.
