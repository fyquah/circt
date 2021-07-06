import sys

in_cell = 0
for line in sys.stdin:
    if line.strip().startswith("function") or line.strip().startswith("task"):
        in_cell += 1
        continue
    elif line.strip().startswith("endfunction") or line.strip().endswith("endtask"):
        in_cell = False
        continue

    if not in_cell:
        print(line, end="")


