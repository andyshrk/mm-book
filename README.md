# The Linux Memory manager

This repo will contain my efforts towards writing a book describing the mm
subsystem of the linux kernel.

I estimate this will take 2+ years to complete, part-time.

## Working with the repo

* Install [git lfs](https://git-lfs.github.com/) via `git lfs install`.

* To build the book simply run `./build.sh`. This will output `book.pdf`.

* To watch files in the book directory and run a build when they change, firstly
  ensure you have `inotifywait` installed (on arch this is via the
  `inotify-tools` pacakge) then run `./watch.sh`.
