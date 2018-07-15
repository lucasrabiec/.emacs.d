;; remove menu bar and tool bar
(menu-bar-mode 0)
(tool-bar-mode 0)

;; Load custom settings (those changed with M-x customize).
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(provide 'init-basics)
