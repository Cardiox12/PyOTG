export E_NUMPY=numpy
export E_MAT=matplotlib

variables="$(env | grep -E "^E_" | tr "\n" " ")"

for var in $variables; do
	var="$(echo "$var" | cut -d "=" -f2)"
	python3 -m pip install "$var"
done