# bqコマンドを使用してローカルのCSVをbigqueryにインポートする
# 引数にプロジェクト名　データセット名　テーブル名　CSVファイル名を指定する
# 例）sh workspace.sh m2m-core dx_999_reference test output.csv
#
# プロジェクト名
PROJECT_ID=$1

# データセット名
DATASET_NAME=$2

# テーブル名は新しく作成する
TABLE_NAME=$3

# ローカルのCSVファイル
CSV_FILE=$4

# 改行している場合もある
bq load --source_format=CSV --field_delimiter=',' --allow_quoted_newlines --replace --autodetect "${PROJECT_ID}:${DATASET_NAME}.${TABLE_NAME}" "${CSV_FILE}"
