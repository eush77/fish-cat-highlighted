# fish-cat-highlighted

[Fish](http://fishshell.com/) script that adds automatic syntax highlighting for files being printed with `cat`.

```haskell
/t/demo ❩  cat sort.hs
sort :: Ord a => [a] -> [a]
sort [] = []
sort (pivot : rest) = sort lessEqual ++ [pivot] ++ sort greater
                      where lessEqual = filter (<= pivot) rest
                            greater = filter (pivot <) rest
```

If standard input or output stream is redirected or file type not recognized, regular `cat` fires instead.

```
/t/demo ❩  cat sort.hs |cat
sort :: Ord a => [a] -> [a]
sort [] = []
sort (pivot : rest) = sort lessEqual ++ [pivot] ++ sort greater
                      where lessEqual = filter (<= pivot) rest
                            greater = filter (pivot <) rest
/t/demo ❩  cat (printf "Hello!\n" |psub)
Hello!
```

## Prerequisites

* [GNU Source-highlight](https://www.gnu.org/software/src-highlite/)

## Supported languages

```
source-highlight --lang-list
```

## Install

[![npm](https://nodei.co/npm/fish-cat-highlighted.png)](https://nodei.co/npm/fish-cat-highlighted/)

or simply put the script to your `~/.config/fish/functions/` or source it elsewise.

## License

MIT
