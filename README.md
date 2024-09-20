# Atkinson dithering example

The classic Macintosh 1-bit filter, as used by
[HyperDither](https://www.tinrocket.com/content/hyperdither/).

This project was originally created 2010-2016 by
[@gazs](https://github.com/gazs)
([sources](https://github.com/gazs/canvas-atkinson-dither), [live
demo](https://gazs.github.io/canvas-atkinson-dither/)).

## How it works

Compares every pixel to 50% grey, then changes them to either black or white.
The difference between the input and the output is then distributed to the
neighbouring pixels as follows (X is the current pixel):

```
     X  1/8 1/8
1/8 1/8 1/8
    1/8
```

Example screenshot:

<a href="https://github.com/miguno/canvas-atkinson-dither/blob/master/example.png"><img src="https://github.com/miguno/canvas-atkinson-dither/blob/master/example.png" alt="Dithering example" width="300"></a><br />

## How to run locally

Requires `npm`.

Start a local web server to run the demo app:

```
./start.sh
```

## Implementation

This code uses [Drag and Drop
events](https://web.dev/articles/read-files#toc-selecting-files-dnd),
[WebWorkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers),
and the
[FileReader](https://developer.mozilla.org/en-US/docs/Web/API/FileReader) API.
