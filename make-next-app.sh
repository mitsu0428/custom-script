# 引数を受け取る
# $1: app-name

# /app-nameディレクトリがなければ作成
if [ ! -d $1 ]; then
    mkdir $1
fi

# ディレクトリ移動
cd $1

# ファイルがなければ作成
npx create-next-app $1-front --typescript

# ディレクトリ移動
cd $1-front

# パッケージインストール
yarn
yarn add styled-components @types/styled-components
yarn add babel-plugin-styled-components
yarn add react-icons
yarn add @mui/material @emotion/react @emotion/styled
