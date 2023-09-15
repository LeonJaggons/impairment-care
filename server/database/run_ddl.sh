DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="ic"
DB_USER="postgres"
DB_PASSWORD="Orbit101!"

DDL_TYPE_FILES=("demographic", "patient")

for FILE in "${DDL_TYPE_FILES[@]}"; do
    echo "Running $FILE..."

    psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -a -f $FILE
    if [$? -eq 0]; then
        echo "$FILE executed successfully"
    else
        echo "Error executing $FILE"
        exit 1
    fi
done
echo "DDL executed successfully"