;;; init.el -- my init.el
;;; Commentary:

;;; Code:

;; Load sources
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
(load "~/.emacs.d/modules/entry.el")

;; Centralize backup files
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

;; Highlight current line
(global-hl-line-mode 1)

;; Line Number
(defvar display-line-numbers-type)
(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

;; Ruler
(setq display-fill-column-indicator-column 80)
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)
(add-hook 'text-mode-hook 'display-fill-column-indicator-mode)

;; Maximized at startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Fix mouse scrolling does not work in terminal
(unless (display-graphic-p)
  (global-set-key (kbd "<mouse-4>") (kbd "<wheel-up>"))
  (global-set-key (kbd "<mouse-5>") (kbd "<wheel-down>")))

;; macOS Tweaks
(when (eq system-type 'darwin)
  ;; Do not swap option and command on macOS
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'hyper)

  ;; Enable ligatures on macOS
  (mac-auto-operator-composition-mode t))

  (global-set-key (kbd "H-v") 'evil-paste-before)

;;; init.el ends here
