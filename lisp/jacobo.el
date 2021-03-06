(require 'key-bindings)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; pallet for cask management
(require 'pallet)
(pallet-mode t)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; is this on a mac??
(setq is-mac (equal system-type 'darwin))
(when is-mac (require 'mac))

;; dired-async
(when (require 'dired-aux)
   (require 'dired-async))

;; helm mode
(require 'jacobo/helm-mode)

;; helm-gtags
(require 'jacobo/helm-gtags)

;;ibuffer setup
(require 'jacobo/ibuffer-setup)

;; org stuff
(require 'jacobo/org-mode)

;; smart tab mode
(require 'jacobo/smart-tab)

;; emacs completion
(require 'jacobo/emacs-completion)

;; expand-region
(require 'jacobo/expand-region)

;; smart-forward
(require 'jacobo/smart-forward)

;; groovy mode
(require 'jacobo/groovy)

;; grails-projectile-mode
(require 'jacobo/grails)

;; configure extras on magit
(require 'jacobo/magit)

;; ace-jump mode and jump-car mode
(require 'jacobo/char-jump)

;; ace-window mode
(require 'jacobo/ace-window-mode)

;; ace-jump-zap
(require 'jacobo/ace-jump-zap)

;; multiple cursors
(require 'jacobo/multiple-cursors)

;; browse kill ring
(require 'jacobo/browse-kill-ring)

;; feature-mode
(require 'jacobo/feature-mode)

;; markdown mode
(require 'jacobo/markdown-mode)

;; zoom-frm
(require 'jacobo/zoom-frm)

;; ;; spock-mode --- need submodule I think
;; (require 'spock-mode)

;; gradle-mode -- need submodule I think
(require 'jacobo/gradle-mode)

;; nxml mode configuration
(require 'jacobo/xml-setup)

;; stripe-buffer prettify lists
(require 'jacobo/stripe-buffer-setup)

;; dired-details
(require 'jacobo/dired-setup)

;; mark for deletion no content
;; ;; gist
;; (require 'jacobo/gist)

;; javadoc setup
(require 'jacobo/javadoc)

;; smart tabs setup
(require 'jacobo/setup-smart-tabs)

;; projectile-mode
(require 'jacobo/projectile-mode)

;; flycheck mode setup
(require 'jacobo/flycheck)

;; web-mode
(require 'jacobo/web-mode)

;; git-gutter mode
(require 'jacobo/git-gutter-mode)

;; smartparens
(require 'jacobo/smartparens-setup)

;; clojure
(require 'jacobo/clojure)

;; smart mode line
(require 'jacobo/smart-mode-line)

;; rainbow-delimiters-mode
(require 'jacobo/rainbow-mode-delimiters)

(require 'appearance)

(require 'registers)
;; simple modes turned on
;; zygospore
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)

(transient-mark-mode 1)
(delete-selection-mode 1)

;; whitespace butler
(ws-butler-global-mode t)

;; scala and ensime
(require 'jacobo/scala)

;; aggressive indent
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'groovy-mode)
(add-to-list 'aggressive-indent-excluded-modes 'scala-mode)

;; answer questions with y or n
(fset 'yes-or-no-p 'y-or-n-p)

(require 'jacobo/sql-setup)

(provide 'jacobo)
;;; jacobo.el ends here
