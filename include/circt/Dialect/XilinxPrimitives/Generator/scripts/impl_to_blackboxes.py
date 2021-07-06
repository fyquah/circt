##################################################################################
#
# A very incomplete simple script that turns verilog implementations into blackboxes.
#
##################################################################################

import sys

def readline():
    f = sys.stdin
    line = f.readline()
    stripped = line.strip()
    if (stripped.startswith("`timescale")
            or stripped.startswith("`define")):
        return readline()

    return line

def main():
    line = readline()
    while line:
        justEntered = True

        if line.find("module") == -1:
            print(line, end="")
            line = readline()
            continue

        while True:
            res = line.find(");")
            if res == -1:
                print(line, end="")
                line = readline()
            else:
                break

        while True:
            if line.find("endmodule") == -1:
                if (justEntered
                        or line.strip().startswith("parameter ")
                        or line.strip().startswith("input ")
                        or line.strip().startswith("output ")):
                    print(line, end="")
                justEntered = False
                line = readline()
            else:
                break
       
        print(line, end="")
        line = readline()

if __name__ == "__main__":
    main()
