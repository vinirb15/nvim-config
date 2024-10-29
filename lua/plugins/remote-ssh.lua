return {
    "nosduco/remote-sshfs.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {
        mount_point = "/mnt/remote_sshfs",
        ssh_config = {
            user = "usuario",
            host = "exemplo.com",
            port = 22,
            identity_file = "~/.ssh/id_rsa",
        },
        sshfs_options = {
            "-o reconnect",
            "-o allow_other",
        },
        connections = {
            ssh_configs = { 
                vim.fn.expand "$HOME" .. "/.ssh/config",
                "/etc/ssh/ssh_config",
            },
            sshfs_args = { 
                "-o reconnect",
                "-o ConnectTimeout=5",
            },
        },
        auto_mount = true,
        auto_unmount = true,
    },
    config = function(_, opts)
        require("remote-sshfs").setup(opts)
        vim.api.nvim_set_keymap("n", "<leader>rm", ":RemoteMount<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>ru", ":RemoteUnmount<CR>", { noremap = true, silent = true })
    end
}

