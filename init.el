;;; init.el -- Init
;;; Commentary:
;;; Code:
(load "~/.emacs.d/preferences/preset.el")
(load "~/.emacs.d/preferences/editing.el")
(load "~/.emacs.d/preferences/programming.el")
(load "~/.emacs.d/preferences/appearance.el")

(use-package vertico
  :config
  (vertico-mode t))

(use-package orderless
  :config
  (setq completion-styles '(orderless)))

(use-package marginalia
  :config
  (marginalia-mode t))

(use-package consult)
(use-package which-key :config (which-key-mode))

(use-package treemacs
  :config
  (setq treemacs-width 25))

; (setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init)
;;; init.el ends here
