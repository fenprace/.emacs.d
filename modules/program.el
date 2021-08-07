;;; program.el --- packages for programming
;;; Commentary:
;;; Code:

(use-package typescript-mode)
(use-package yaml-mode)
(use-package json-mode)
(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode)))

(use-package editorconfig
  :config (editorconfig-mode 1))

(use-package prettier-js
  :hook ((js-mode . prettier-js-mode)
	 (typescript-mode . prettier-js-mode)
	 (web-mode . prettier-js-mode)))

(use-package company
  :hook (after-init . global-company-mode)
  :config (setq company-tooltip-align-annotations t
	company-tooltip-limit 10
	company-show-numbers t
	company-idle-delay .2
	company-minimum-prefix-length 1))

(use-package flycheck
  :init (setq flycheck-emacs-lisp-load-path 'inherit)
  :config (global-flycheck-mode))

;;; Yasnippet
(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :after (yasnippet))

(use-package editorconfig
  :config (editorconfig-mode 1))

(use-package prettier-js
  :hook ((js-mode . prettier-js-mode)
	 (typescript-mode . prettier-js-mode)
	 (web-mode . prettier-js-mode)))

;;; LSP
(use-package lsp-mode
  :commands lsp
  :init (setq lsp-keymap-prefix "C-c l")
  :hook ((typescript-mode . lsp-deferred)
         (js-mode . lsp-deferred)
	 (web-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :custom (lsp-clients-typescript-server-args
	   '("--stdio"
	     "--tsserver-log-file"
	     "~/.tsserver.log")))

(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(provide 'program.el)
;;; program.el ends here

