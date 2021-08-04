;;; init -- Summary
;;; Commentary:

;;; Code:
(load "~/.emacs.d/packages.el")
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)

(mac-auto-operator-composition-mode t)

;;; init ends here
