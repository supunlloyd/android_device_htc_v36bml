echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="sensors"

for dir in $dirs ; do
	echo "Reverting $dir patches..."
	git apply --reverse device/coolpad/note3/patches/$dir/*.patch
	#git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."