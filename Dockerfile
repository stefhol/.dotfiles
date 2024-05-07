FROM fedora:39
RUN sudo dnf install dnf-plugins-core zsh -y
SHELL [ "/bin/zsh", "-c" ]
RUN sudo dnf copr enable varlad/zellij -y
RUN sudo dnf copr enable agriffis/neovim-nightly -y
RUN sudo dnf install -y neovim python3-neovim -y
RUN sudo dnf install zellij -y
RUN sudo dnf install tmux -y
RUN sudo dnf install gcc g++ zig nodejs npm git stow fastfetch unzip openssl ripgrep zsh util-linux-user java-latest-openjdk httpie fzf bat just rust rustup cargo -y
RUN chsh -s /bin/zsh
RUN sudo dnf install passwd -y
# User setup
RUN useradd -ms /bin/zsh me 
RUN echo "me:1234" | chpasswd
RUN usermod -aG wheel me
WORKDIR /home/me
RUN mkdir -p /home/me/.local \
    && chown -R me /home/me/.local 
RUN mkdir -p /home/me/.cache\
    && chown -R me /home/me/.cache
VOLUME [ "/home/me/.cache" ]
VOLUME [ "/home/me/.local" ]
USER me
#
RUN git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
RUN chmod +x "./.antidote/antidote.zsh"
RUN curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
RUN curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
RUN cargo install tmux-sessionizer
ENV SHELL=zsh
ADD --chown=me ./nvim/.config /home/me/.config
ADD --chown=me ./nvim/.config /home/me/.config
ADD --chown=me ./zellij/.config /home/me/.config
ADD --chown=me ./tmux/.tmux.conf /home/me/.tmux.conf
ADD --chown=me ./tms/.config /home/me/.config
ADD --chown=me ./zsh/dot-zsh_plugins.txt /home/me/.zsh_plugins.txt
ADD --chown=me ./zsh/dot-zshrc /home/me/.zshrc
RUN echo "eval "$(zoxide init zsh)"" >> .zshrc
ADD --chown=me ./linux/dot-zshenv /home/me/.zshenv
CMD ["/usr/bin/zsh" ]
