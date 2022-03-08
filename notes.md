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
