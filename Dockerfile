FROM alpine
COPY _opt /opt/neovim
VOLUME /opt/neovim
CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & wait ${!}"]
