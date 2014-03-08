#!/bin/sh

#
# 	Autor:			Stanislav Nechutný (xnechu01)
#	Název:			1. projekt IOS na FIT VUT - Test
#	Repozitář:		git@github.com:nechutny/VUT-IOS-1.projekt---Test.git
#


echo "POZOR: jelikož není v grafu dáno pořadí, tak se na výsledku volá sort pro standardizaci výstupu a jeho lepší testovatelnost";

echo "[Test 01] proj1"
./depcg.sh ./bin/proj1 | sort > test/test_01.output
diff test/test_01.test test/test_01.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_01.output;
else
	echo " ... Chyba";
fi

echo "[Test 02] proj1 -p"
./depcg.sh -p ./bin/proj1 | sort > test/test_02.output
diff test/test_02.test test/test_02.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_02.output;
else
	echo " ... Chyba";
fi

echo "[Test 03] proj1 -p -g"
./depcg.sh -p -g ./bin/proj1 | sort > test/test_03.output
diff test/test_03.test test/test_03.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_03.output;
else
	echo " ... Chyba";
fi

echo "[Test 04] proj1 -p -g -r char"
./depcg.sh -p -g -r char ./bin/proj1 | sort > test/test_04.output
diff test/test_04.test test/test_04.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_04.output;
else
	echo " ... Chyba";
fi

echo "[Test 05] proj1 -p -g -r Int"
./depcg.sh -p -g -r Int ./bin/proj1 | sort > test/test_05.output
diff test/test_05.test test/test_05.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_05.output;
else
	echo " ... Chyba";
fi

echo "[Test 06] proj1 -p -g -d Int"
./depcg.sh -p -g -d Int ./bin/proj1 | sort > test/test_06.output
diff test/test_06.test test/test_06.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_06.output;
else
	echo " ... Chyba";
fi

echo "[Test 07] proj1 -p -g -d charToInt"
./depcg.sh -p -g -d charToInt ./bin/proj1 | sort > test/test_07.output
diff test/test_07.test test/test_07.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_07.output;
else
	echo " ... Chyba";
fi

echo "[Test 08] proj1 -p -g -r charToInt"
./depcg.sh -p -g -r charToInt ./bin/proj1 | sort > test/test_08.output
diff test/test_08.test test/test_08.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_08.output;
else
	echo " ... Chyba";
fi

echo "[Test 09] proj1 -d main"
./depcg.sh -d main ./bin/proj1 | sort > test/test_09.output
diff test/test_09.test test/test_09.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_09.output;
else
	echo " ... Chyba";
fi

echo "[Test 10] proj1 -p -d main"
./depcg.sh -p -d main ./bin/proj1 | sort > test/test_10.output
diff test/test_10.test test/test_10.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_10.output;
else
	echo " ... Chyba";
fi






echo "[Test 11] proj2"
./depcg.sh ./bin/proj2 | sort > test/test_11.output
diff test/test_11.test test/test_11.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_11.output;
else
	echo " ... Chyba";
fi

echo "[Test 12] proj2 -p"
./depcg.sh -p ./bin/proj2 | sort > test/test_12.output
diff test/test_12.test test/test_12.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_12.output;
else
	echo " ... Chyba";
fi

echo "[Test 13] proj2 -p -g"
./depcg.sh -p -g ./bin/proj2 | sort > test/test_13.output
diff test/test_13.test test/test_13.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_13.output;
else
	echo " ... Chyba";
fi

echo "[Test 14] proj2 -p -g -r my_"
./depcg.sh -p -g -r my_ ./bin/proj2 | sort > test/test_14.output
diff test/test_14.test test/test_14.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_14.output;
else
	echo " ... Chyba";
fi

echo "[Test 15] proj2 -p -g -r asin"
./depcg.sh -p -g -r asin ./bin/proj2 | sort > test/test_15.output
diff test/test_15.test test/test_15.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_15.output;
else
	echo " ... Chyba";
fi

echo "[Test 16] proj2 -p -g -d sqrt"
./depcg.sh -p -g -d sqrt ./bin/proj2 | sort > test/test_16.output
diff test/test_16.test test/test_16.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_16.output;
else
	echo " ... Chyba";
fi

echo "[Test 17] proj2 -p -g -d trinagle_create"
./depcg.sh -p -g -d trinagle_create ./bin/proj2 | sort > test/test_17.output
diff test/test_17.test test/test_17.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_17.output;
else
	echo " ... Chyba";
fi

echo "[Test 18] proj2 -p -g -r my_asin"
./depcg.sh -p -g -r my_asin ./bin/proj2 | sort > test/test_18.output
diff test/test_18.test test/test_18.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_18.output;
else
	echo " ... Chyba";
fi

echo "[Test 19] proj2 -d main"
./depcg.sh -d main ./bin/proj2 | sort > test/test_19.output
diff test/test_19.test test/test_19.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_19.output;
else
	echo " ... Chyba";
fi

echo "[Test 20] proj2 -p -d main"
./depcg.sh -p -d main ./bin/proj2 | sort > test/test_20.output
diff test/test_20.test test/test_20.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_20.output;
else
	echo " ... Chyba";
fi




echo "[Test 21] proj3"
./depcg.sh ./bin/proj3 | sort > test/test_21.output
diff test/test_21.test test/test_21.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_21.output;
else
	echo " ... Chyba";
fi

echo "[Test 22] proj3 -p"
./depcg.sh -p ./bin/proj3 | sort > test/test_22.output
diff test/test_22.test test/test_22.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_22.output;
else
	echo " ... Chyba";
fi

echo "[Test 23] proj3 -p -g"
./depcg.sh -p -g ./bin/proj3 | sort > test/test_23.output
diff test/test_23.test test/test_23.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_23.output;
else
	echo " ... Chyba";
fi

echo "[Test 24] proj3 -p -g -r find_"
./depcg.sh -p -g -r find_ ./bin/proj3 | sort > test/test_24.output
diff test/test_24.test test/test_24.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_24.output;
else
	echo " ... Chyba";
fi

echo "[Test 25] proj3 -p -g -r create_bitmap"
./depcg.sh -p -g -r create_bitmap ./bin/proj3 | sort > test/test_25.output
diff test/test_25.test test/test_25.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_25.output;
else
	echo " ... Chyba";
fi

echo "[Test 26] proj3 -p -g -d getcolor"
./depcg.sh -p -g -d getcolor ./bin/proj3 | sort > test/test_26.output
diff test/test_26.test test/test_26.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_26.output;
else
	echo " ... Chyba";
fi

echo "[Test 27] proj3 -p -g -d _vline"
./depcg.sh -p -g -d _vline ./bin/proj3 | sort > test/test_27.output
diff test/test_27.test test/test_27.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_27.output;
else
	echo " ... Chyba";
fi

echo "[Test 28] proj3 -p -g -r \" main\""
./depcg.sh -p -g -r " main" ./bin/proj3 | sort > test/test_28.output
diff test/test_28.test test/test_28.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_28.output;
else
	echo " ... Chyba";
fi

echo "[Test 29] proj3 -d main"
./depcg.sh -d main ./bin/proj3 | sort > test/test_29.output
diff test/test_29.test test/test_29.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_29.output;
else
	echo " ... Chyba";
fi

echo "[Test 30] proj3 -p -d main"
./depcg.sh -p -d main ./bin/proj3 | sort > test/test_30.output
diff test/test_30.test test/test_30.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_30.output;
else
	echo " ... Chyba";
fi
