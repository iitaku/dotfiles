set print pretty
set print elements 0

python
import sys
sys.path.insert(0, '~/.gdb/stl')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
