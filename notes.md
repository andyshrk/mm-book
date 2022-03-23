# Rough notes

(absolutely rough and ready, raw, harebrained nonsense only I can understand)

## TODOs

* Cover stress-ng somehow.

* Use Chris Down's [excellent talk](https://media.ccc.de/v/arch-conf-online-2020-6390-linux-memory-management-at-scale) and [blog post](https://chrisdown.name/2018/01/02/in-defence-of-swap.html) as inspiration - which [I took notes on](https://github.com/lorenzo-stoakes/linux-mm-notes/blob/master/chris_down.md) in the linux-mm-notes repo.

* Cover the whole linux swap controversy.

* Cover changes to address issues around spectre, rowhammer, etc.

* Address PID vs. TID given that threads share memory mappings...

* The wonders of fork as relates to demand paging.

* Big discussion on the perils of overcommit.

## References

* Stack pointer growing downwards - Stanley Mazor - The stack pointer was chosen
  to run "downhill" (with the stack advancing toward lower memory) to simplify
  indexing into the stack from the user's program (positive indexing) and to
  simplify displaying the contents of the stack from a front panel. See
  http://tcm.computerhistory.org/ComputerTimeline/Chap37_intel_CS2.pdf (via
  https://stackoverflow.com/questions/2035568/ )

## Notes

* Exploit - dirty pipe from 5.8 to 5.16.11, 5.15.25 and 5.10.102 https://dirtypipe.cm4all.com/

* Exploit - dirty cow from 2.6.22 to 4.8.3, 4.7.9, 4.4.26 https://github.com/dirtycow/dirtycow.github.io/wiki/VulnerabilityDetails

## diagnosis interfaces

### Commands

```
free # of course :)
slabtop
numastat
vmstat
```

### procfs/sysfs interfaces

```
# Text-based general information
/proc/zoneinfo # Per-zone memory info -> spanned, present, managed
/proc/meminfo
/proc/vmstat
/proc/vmallocinfo
/proc/pressure/memory # The excellent CONFIG_PSI
/proc/slabinfo
/proc/iomem
/proc/buddyinfo
/proc/pagetypeinfo

# Text-based per-process
/proc/*/maps
/proc/*/oom_[maps,adj,score,score_adj]
/proc/*/smaps
/proc/*/smaps_rollup
/proc/*/stat
/proc/*/statm
/proc/*/status
/proc/*/numa_maps

# Raw memory access
/proc/*/memory
/proc/*/pagemap
```
## inspiration

https://en.algorithmica.org/ and https://github.com/algorithmica-org/algorithmica

## ideas

* Cache - describe, discuss ways, customisable via CAT -
  https://www.intel.com/content/dam/www/public/us/en/documents/white-papers/cache-allocation-technology-white-paper.pdf
  maybe out of scope?

## Getting kernel

* get cryptographically confirmed tarball - https://git.kernel.org/pub/scm/linux/kernel/git/mricon/korg-helpers.git/plain/get-verified-tarball - via https://twitter.com/monsieuricon/status/1501267710667333636

## e820 example output

```
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000005efff] usable
[    0.000000] BIOS-e820: [mem 0x000000000005f000-0x000000000005ffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000060000-0x000000000009ffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000000a0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000034765fff] usable
[    0.000000] BIOS-e820: [mem 0x0000000034766000-0x0000000034766fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x0000000034767000-0x0000000034767fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000034768000-0x000000003d9f6fff] usable
[    0.000000] BIOS-e820: [mem 0x000000003d9f7000-0x000000003de75fff] reserved
[    0.000000] BIOS-e820: [mem 0x000000003de76000-0x000000003dff4fff] usable
[    0.000000] BIOS-e820: [mem 0x000000003dff5000-0x000000003e3fdfff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x000000003e3fe000-0x000000003ee4ffff] reserved
[    0.000000] BIOS-e820: [mem 0x000000003ee50000-0x000000003eefefff] type 20
[    0.000000] BIOS-e820: [mem 0x000000003eeff000-0x000000003eefffff] usable
[    0.000000] BIOS-e820: [mem 0x000000003ef00000-0x000000003fffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000efffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fe000000-0x00000000fe010fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec00fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fee00000-0x00000000fee00fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x00000010bdffffff] usable
```

## Links

* On PA -> DIMM banks, rows, columns - https://lackingrhoticity.blogspot.com/2015/05/how-physical-addresses-map-to-rows-and-banks.html
* Ancient ACM paper on 'folding' (i.e. paging) - https://dl.acm.org/doi/10.1145/363626.363629
* What a C programmer should known about memory - https://web.archive.org/web/20151123133211/http://marek.vavrusa.com/c/memory/2015/02/20/memory/

## books

https://www.amazon.co.uk/dp/1449344186/ Understanding & Using C Pointers: Core Techniques for Memory Management
https://www.amazon.co.uk/dp/1292061421/ Modern Operating Systems
https://www.amazon.co.uk/dp/1292214295/ Operating Systems: Internals and Design Principles
https://www.amazon.co.uk/dp/0131453483/ Understanding the Virtual Memory Manager
https://www.amazon.co.uk/dp/0672329468/ Linux Kernel Development
https://www.amazon.co.uk/dp/0201896834/ AoCP: Vol 1: Fundamental Algorithms
https://www.amazon.co.uk/dp/1593272200/ The Linux Programming Interface
https://www.amazon.co.uk/dp/0201633388/ UNIX Systems for Modern Architectures
https://www.amazon.co.uk/dp/198508659X/ Operating Systems: Three Easy Pieces
https://www.amazon.co.uk/dp/0985673524/ Operating Systems: Principles and Practice
https://www.amazon.co.uk/dp/1627056025/ Architectural and Operating System Support for Virtual Memory
