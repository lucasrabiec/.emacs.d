;; ------=== CUSTOM SETTINGS

;; Open split shell and dir on launch
(add-hook 'emacs-startup-hook
          (lambda ()
            (let ((r (split-window-right)))
              (ansi-term "/bin/bash")
              (let ((b (split-window-below)))
                (select-window b)
                (find-file "/mnt/c/Workspace")))))

;; Don't show startup messages.
(setq-default inhibit-startup-message t
	      inhibit-startup-echo-area-message t)

;; Remove menu bar and tool bar
(menu-bar-mode 0)
(tool-bar-mode 0)

;; Highlight current line.
(global-hl-line-mode t)

;; Show current column number in status line.
(setq column-number-mode t)

;; Enable syntax highlighting.
(global-font-lock-mode t)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode t)

;; Add closing bracket automatically.
(electric-pair-mode t)

;; Allways add new line on end of file.
(setq-default require-final-newline t)

;; Force spaces instead of tabs.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default indent-line-function 'insert-tab)

;; Change all yes/no prompts to y/n.
(fset 'yes-or-no-p 'y-or-n-p)

;; Use standard editing shortcuts for C-c, C-v, C-x, C-z.
(cua-mode t)

;; Ignore case when completing filenames.
(setq completion-ignore-case t
      read-file-name-completion-ignore-case t)

;; Be smart about filenames in minibuffer.
(file-name-shadow-mode t)

;; Use diminish
(use-package diminish
  :ensure t)

;; Stop cursor at CamelCase names with C-<left>/C-<right> movements.
(use-package subword
  :diminish
  :init (global-subword-mode t))

;; Delete trailing whitespace before save.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Load custom settings (those changed with M-x customize).
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)


;; ------=== CUSTOM KEY BINDINGS

(global-set-key (kbd "<XF86Up>") 'scroll-up)
(global-set-key (kbd "<XF86Down>") 'scroll-down)

;; Allows to switch windows with M-<up>, M-<down>, M-<left> and M-<right>;
;; bind-keys* allows to bind key sequence that is alway available.
(use-package windmove
  :bind* (("M-<left>" . windmove-left)
          ("M-<right>" . windmove-right)
          ("M-<up>" . windmove-up)
          ("M-<down>" . windmove-down)))

(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-4") 'delete-window)

(defun kill-default-buffer ()
  "Kill the currently active buffer -- set to C-x k so that users
   are not asked which buffer they want to kill."
  (interactive)
  (let (kill-buffer-query-functions) (kill-buffer)))

(global-set-key (kbd "C-x C-k") 'kill-default-buffer)


(provide 'init-basics)
