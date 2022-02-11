# docker run --rm -v "$PWD":/usr/src/myapp/ -w /usr/src/myapp rust main.rs
# docker run --rm -v "$PWD":/usr/src/myapp/ -w /usr/src/myapp rust ./main
FROM rust
COPY main.rs /mnt/
WORKDIR /mnt
# docker build -t my-rust-app .
# docker run -dit --name myRustApp my-rust-app
# ここでvscodeでcontainerに接続してmain.rsを編集してシェルに入ってコンパイルする