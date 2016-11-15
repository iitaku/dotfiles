set history save on
set history size 10000000
set print pretty
set print elements 0

python
import sys
sys.path.insert(0, '/home/iitaku/.gdb/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
