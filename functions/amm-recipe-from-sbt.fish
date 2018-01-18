# Defined in - @ line 2
function amm-recipe-from-sbt
	echo $argv | sed -E 's/^libraryDependencies \+= //g;s/"(.+)" %+ "(.+)" %+ "(.+)"/\1::\2:\3/g;s/^/import $ivy.`/g;s/$/`/g'
end
