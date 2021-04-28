PC_NAME="epq"

CONFLICT_FILES=`find . -print | grep "-$PC_NAME"`

while read FROM_FILE_NAME
do
    TO_FILE_NAME=`echo $FROM_FILE_NAME | sed -e "s/-$PC_NAME//g"`
    echo "$FROM_FILE_NAME -> $TO_FILE_NAME"
    mv $FROM_FILE_NAME $TO_FILE_NAME
done <<END
$CONFLICT_FILES
END
