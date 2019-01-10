# Remove `current` symlink
cd
cd workspace/elastic-stack
rm current
# Move stack downloaded to the verion folder
mv stack-download $ES_STACK_VERSION
# Create new `current` symlink
ln -s $ES_STACK_VERSION current
