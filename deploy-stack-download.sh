# Remove `current` symlink
cd
cd workspace/elastic-stack
rm -f current
# Move stack downloaded to the verion folder
#mv stack-download $ES_STACK_VERSION
# Create new `current` symlink
ln -s stack-download-$ES_STACK_VERSION current
