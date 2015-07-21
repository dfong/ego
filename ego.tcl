proc S {i j c} {puts -nonewline [format %s%c [string range {proc S {i j c} {puts -nonewline [format %s%c [string range $i $j] $c]}
S 0 58 123;S 0 end 125;S 58 end 10} $i $j] $c]}
S 0 58 123;S 0 end 125;S 58 end 10
