update: init
	bash scripts/hash check
	make suffix
	ruby scripts/concat | jq -M . > banks.json
	bash scripts/hash update
	date "+%Y%m%d" > updated_at

suffix:
	bash scripts/suffix > temp/suffix.json

init:
	mkdir -p temp
	curl https://raw.githubusercontent.com/zengin-code/source-data/master/data/banks.json > temp/banks.json
	bash scripts/banktype > temp/banktype.list
