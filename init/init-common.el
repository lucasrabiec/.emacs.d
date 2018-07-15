;; Interface to Git.
(use-package magit
  :ensure t
  :bind("C-x g" . magit-status)
  :config
  (setq magit-completing-read-function 'magit-ido-completing-read))



(provide 'init-common)
