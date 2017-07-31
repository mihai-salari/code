#!/bin/bash -

# Remove comments and sort datafiles
sed '/^#/d' tmp/quotas.txt | sort > tmp/quotas.sorted
sed '/^#/d' tmp/sales.txt | sort > tmp/sales.sorted

# Combine on first key, results to standard output
join tmp/quotas.sorted tmp/sales.sorted

# Remove temporary files
rm tmp/quotas.sorted tmp/sales.sorted
