curl -v -u -X POST $NEXUS_UPLOAD_URL \
	    -H "Authorization: Basic YWRtaW46YWRtaW4xMjM=" -H "accept: application/json" -H "Content-Type: multipart/form-data" \
            -F "maven2.groupId=$GROUP_ID" \
            -F "maven2.artifactId=$ARTIFACT_ID" \
            -F "maven2.version=$VERSION" \
            -F "maven2.asset1=@$FILE;type=application/x-tar.gz-compressed" \
            -F "maven2.asset1.classifier=$CLASSIFIER" \
            -F "maven2.asset1.extension=$PACKAGING" 
