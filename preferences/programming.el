;;; programming.el --- Programming
;;; Commentary:
;;; Code:
(use-package company
  :hook (after-init . global-company-mode)
  :config
  (setq company-tooltip-align-annotations t
	company-tooltip-limit 8
	company-show-quick-access t
	company-idle-delay .2
	company-minimum-prefix-length 1
	company-selection-wrap-around t))

(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package eglot)

(provide 'programming)
;;; programming.el ends here
