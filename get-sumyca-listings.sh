# 引数1: TOKEN
# 引数2: CSVファイル名

# リスト取得
curl "https://api-sumyca.m2msystems.cloud/manager/listings?page=0&itemsPerPage=3000" -H "x-access-token:${1}" | jq -r '.listings[] | [.id,.nameForManage,.name,.address.prefecture.prefectureName,.address.city.cityName,.address.streetAddress,.listingType,.builtAt.buildYear,.builtAt.buildMonth,.structureType,.layoutType,.floorInfo.floorsAboveGround,.floorInfo.floorsBelowGround,.floorInfo.floorOfListing,.maxNumberOfGuests,.size,.contractType]| @csv' >${2}
