# ----------WARNING-------------
# This should be run in the directory above the Processing project folder
# There should be one command line argument, which is the name of the Processing
# project folder
# The Processing project folder should be a valid Java package name, so hyphons
# should be underscores

for file in $1/*.pde; do
  if [ "$(basename $file .pde)" != "$1" ]; then
    echo "$(basename $file .pde)"
    echo "$1"
    jfile="$1/$(basename $file .pde).java"
    cp $file $jfile
    echo -e "package $1;\n\n$(cat $jfile)" > $jfile
  fi
done
javadoc -tag pre:a:"Preconditions" -tag post:a:"Postconditions" -d $1/doc $1
rm $1/*.java
