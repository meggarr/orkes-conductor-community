# clone and build conductor UI
mkdir -p tmp/ui
cd tmp/ui
pwd
git clone https://github.com/Netflix/conductor -b v3.15.0 --depth=1
cd conductor/ui
yarn config set network-timeout 600000 -g
# Include monaco sources into bundle (instead of using CDN)
export REACT_APP_MONACO_EDITOR_USING_CDN=false
yarn install
cp -r node_modules/monaco-editor public/
yarn build
