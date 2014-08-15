BetterBAM
=========

BAM file parsing for Ruby using C++ Bamtools library.

This gem has been created to be used in [Transrate](http://www.github.com/blahah/transrate) with the idea of extracting specific bits of information from a BAM file and returning it to Ruby aggregated by sequence.

Currently the information that is going to be extracted from the BAM file for
each sequence is:
 - number of bases mapped to each sequence
 - total edit distance (from the NM tag in the BAM file)
 - number of reads mapped
 - number of pairs mapped
 - number of pairs mapped concordantly
 - number of pairs that map to different sequences and support scaffolding