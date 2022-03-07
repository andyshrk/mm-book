# Rough notes

(absolutely rough and ready, raw, harebrained nonsense only I can understand)

## TODOs

* Cover stress-ng somehow.

* Use Chris Down's [excellent talk](https://media.ccc.de/v/arch-conf-online-2020-6390-linux-memory-management-at-scale) and [blog post](https://chrisdown.name/2018/01/02/in-defence-of-swap.html) as inspiration - which [I took notes on](https://github.com/lorenzo-stoakes/linux-mm-notes/blob/master/chris_down.md) in the linux-mm-notes repo.

* Cover the whole linux swap controversy.

## References

* Stack pointer growing downwards - Stanley Mazor - The stack pointer was chosen
  to run "downhill" (with the stack advancing toward lower memory) to simplify
  indexing into the stack from the user's program (positive indexing) and to
  simplify displaying the contents of the stack from a front panel. See
  http://tcm.computerhistory.org/ComputerTimeline/Chap37_intel_CS2.pdf (via
  https://stackoverflow.com/questions/2035568/ )
