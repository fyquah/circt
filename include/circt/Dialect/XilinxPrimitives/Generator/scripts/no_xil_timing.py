import sys

in_cell = 0
for line in sys.stdin:
    if line.strip().startswith("`ifdef XIL_TIMING"):
        in_cell += 1
        continue
    elif line.strip().startswith("`endif"):
        in_cell = False
        continue

    if not in_cell:
        print(line, end="")

