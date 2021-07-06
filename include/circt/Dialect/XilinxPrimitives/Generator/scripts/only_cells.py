import sys

in_cell = 0
for line in sys.stdin:
    if line.strip().startswith("`celldefine"):
        in_cell += 1
        continue
    elif line.strip().startswith("`endcelldefine"):
        in_cell = False
        continue

    if in_cell:
        print(line, end="")
