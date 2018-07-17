;; Interface to Git.
(use-package magit
  :ensure t
  :bind("C-x g" . magit-status))

;; Display available keybindings in popup.
(use-package which-key
  :ensure t
  :diminish
  :config
  (which-key-mode))


(provide 'init-common)
