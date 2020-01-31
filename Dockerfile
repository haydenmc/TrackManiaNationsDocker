FROM mcr.microsoft.com/windows/servercore:1809
# Copy the game files over
COPY Game/ /

# Copy script for starting up the server
COPY start.cmd /

# Create volume for persisted data
VOLUME [ "C:/_data" ]

# Expose ports
EXPOSE 2350/udp
EXPOSE 2350/tcp
EXPOSE 3450/udp
EXPOSE 3450/tcp

# Start server
ENTRYPOINT ["start.cmd"]
CMD ["/game_settings=MatchSettings\\Nations\\NationsBlue.txt", "/dedicated_cfg=dedicated_cfg.txt"]