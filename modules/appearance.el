;;; appearance.el --- appearance preferences
;;; Commentary:
;;; Code:

;; Theme
(use-package doom-themes
  :config
  (if (display-graphic-p)
      (load-theme 'doom-one-light t)
    (progn
      (xterm-mouse-mode 1)
      (load-theme 'doom-Iosvkem t)))

  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

(use-package doom-modeline
  :init
  (doom-modeline-mode 1))

(use-package highlight-indent-guides
  :hook (prog-mode . highlight-indent-guides-mode)
  :hook (web-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method
	(if (display-graphic-p) 'bitmap 'character)))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;;; appearance.el ends here
