update:
	mkdir -p temp
	curl https://raw.githubusercontent.com/zengin-code/source-data/master/data/banks.json > temp/banks.json
	bash scripts/banktype > temp/banktype.list
	ruby scripts/concat | jq -M . > banks.json
	date "+%Y%m%d" > updated_at
