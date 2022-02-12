# docker run --rm -v "$PWD":/usr/src/myapp/ -w /usr/src/myapp rust main.rs
# docker run --rm -v "$PWD":/usr/src/myapp/ -w /usr/src/myapp rust ./main
FROM rust
# COPY . /mnt/
# copyだとコンテナ内の変更が反映されない
VOLUME /mnt
WORKDIR /mnt
# docker build -t my-rust-app .
# docker run -it --name myRustApp my-rust-app
# ここでvscodeでcontainerに接続してmain.rsを編集してシェルに入ってコンパイルする
