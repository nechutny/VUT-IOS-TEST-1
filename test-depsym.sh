#!/bin/sh

#
# 	Autor:			Stanislav Nechutný (xnechu01)
#	Název:			1. projekt IOS na FIT VUT - Test
#	Repozitář:		git@github.com:nechutny/VUT-IOS-1.projekt---Test.git
#


echo "POZOR: jelikož není v grafu dáno pořadí, tak se na výsledku volá sort pro standardizaci výstupu a jeho lepší testovatelnost";

echo "[Test 31] objects/*.o"
./depsym.sh ./objects/*.o | sort > test/test_31.output
diff test/test_31.test test/test_31.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_31.output;
else
	echo " ... Chyba";
fi

echo "[Test 32] -g objects/*.o"
./depsym.sh -g ./objects/*.o | sort > test/test_32.output
diff test/test_32.test test/test_32.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_32.output;
else
	echo " ... Chyba";
fi

echo "[Test 33] -g -r buffer.o objects/*.o"
./depsym.sh -g -r buffer.o ./objects/*.o | sort > test/test_33.output
diff test/test_33.test test/test_33.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_33.output;
else
	echo " ... Chyba";
fi

echo "[Test 34] -g -d buffer.o objects/*.o"
./depsym.sh -g -d buffer.o ./objects/*.o | sort > test/test_34.output
diff test/test_34.test test/test_34.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_34.output;
else
	echo " ... Chyba";
fi

echo "[Test 35] -r ./objects/buffer.o objects/*.o"
./depsym.sh -r ./objects/buffer.o ./objects/*.o | sort > test/test_35.output
diff test/test_35.test test/test_35.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_35.output;
else
	echo " ... Chyba";
fi

echo "[Test 36] -d ./objects/buffer.o objects/*.o"
./depsym.sh -d ./objects/buffer.o ./objects/*.o | sort > test/test_36.output
diff test/test_36.test test/test_36.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_36.output;
else
	echo " ... Chyba";
fi

echo "[Test 37] -g objects/tag.o objects/syntax.o objects/spell.o objects/menu.o objects/ui.o objects/screen.o"
./depsym.sh -g objects/tag.o objects/syntax.o objects/spell.o objects/menu.o objects/ui.o objects/screen.o| sort > test/test_37.output
diff test/test_37.test test/test_37.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_37.output;
else
	echo " ... Chyba";
fi

echo "[Test 38] -g -d syntax.o objects/tag.o objects/syntax.o objects/spell.o objects/menu.o objects/ui.o objects/screen.o"
./depsym.sh -g -d syntax.o objects/tag.o objects/syntax.o objects/spell.o objects/menu.o objects/ui.o objects/screen.o| sort > test/test_38.output
diff test/test_38.test test/test_38.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_38.output;
else
	echo " ... Chyba";
fi

