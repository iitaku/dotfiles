set history save on
set history size 10000
set print pretty
set print elements 0

python
import sys
import os
sys.path.insert(0, os.path.expanduser('~/.gdb/stl'))
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
