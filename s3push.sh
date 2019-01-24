FLAG=$1
SOURCE_DIR=$2
FILE=$3
DEST_DIR=$4
BUCKET=$5
ACC_KEY=$6
SEC_KEY=$7
REGION=$8

echo -e "$ACC_KEY\n$SEC_KEY\n$REGION\n\n\0" | aws configure

if [ "$FLAG" = "push" ]; then
    aws s3 cp "$SOURCE_DIR"/"$FILE" s3://"$BUCKET"/"$DEST_DIR"/"$FILE"
elif [ "$FLAG" = "pull" ]; then 
    aws s3 cp s3://"$BUCKET"/"$DEST_DIR"/"$FILE" "$SOURCE_DIR"/"$FILE"
else 
    echo "Operation is not specified"
fi
