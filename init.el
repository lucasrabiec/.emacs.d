(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))  ;; path to init scripts

(require 'init-packages)
(require 'init-basics)
(require 'init-common)

(require 'init-ido)
(require 'init-org)
