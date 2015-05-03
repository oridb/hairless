use std

use "types.use"
pkg pg =
	const genlalrtab : (rl : rules# -> int[:])
;;

const gentab = {rl
	std.put("infile:\t%s\n", rl.infile)
	std.put("pkg:\t%s\n", rl.pkgname)
	std.put("start:\t%s\n", rl.start)
	std.put("use:\t")
	for u in rl.uses
		std.put("%s ", u)
	;;
	std.put("\n")
	std.put("myr:\t{%s}\n", rl.myr)
	for r in rl.rules
		dumprule(r)
	;;

	-> [][:]
}

const dumprule = {r
	std.put("%s(%i)\t: ", r.name, r.id)
	for t in r.terms
		std.put("%s ", t)
	;;
	std.put("{%s}\n", r.action)
}

