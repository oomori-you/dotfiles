#.bashrcファイルをsourceコマンドにて読み込み
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

#コマンドのパスを設定
PATH=$PATH:$HOME/bin:/sbin:/usr/sbin:/usr/local/sbin
export PATH

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/oomori/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

#oomori:ターミナル起動時にsedのエラーが出るためコメントアウト、rubyを使うときに真面目に考える
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
    export DOCKER_CERT_PATH=/Users/oomori/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
    export DOCKER_HOST=tcp://192.168.59.103:2376


alias ll='ls -la'
