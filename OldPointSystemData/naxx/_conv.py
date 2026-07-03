def f(line: str) -> str:
    tokens = line.strip().replace(" ", "").replace("}", "").replace("--", "").split(",")
    return "\"{}\", {}, \"2025-07-01\"".format(tokens[2], int(tokens[1]))

def g(line: str) -> str:
    tokens = line.strip().replace(" }", "").replace(" -- ", "").split(",")
    return "\"{}\", {}, \"2025-07-01\"".format(tokens[2], int(tokens[1]))

l = '\t\t\t\t{ 4,  22369 }, -- Desecrated Bindings'
l.strip().split(", ")

lines = ""
print("\n".join(set(map(g, lines[1:]))))