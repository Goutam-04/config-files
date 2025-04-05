sudo dnf autoremove && sudo dnf clean all && \
sudo journalctl --vacuum-time=7d && \
rm -rf ~/.cache/* /tmp/*
