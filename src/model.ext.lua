am.app.set_model(
    {
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_URL = "https://github.com/gobytecoin/gobyte/releases/download/v0.16.2.1/gobytecore-0.16.2-x86_64-linux-gnu.tar.gz",
        DAEMON_ARCHIVE_KIND = "tar.gz",
        DAEMON_NAME = "bin/gobyted",
        CLI_NAME = "bin/gobyte-cli",
        CONF_NAME = "gobyte.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "gobyted",
    },
    { merge = true, overwrite = true }
)