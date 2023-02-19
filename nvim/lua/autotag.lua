local status, autotag = pcall(require, 'nvim-ts-autotag')
if (not status) then require end

autotag.setup {}

