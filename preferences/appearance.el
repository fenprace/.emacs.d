;;; appearance.el -- Appearance
;;; Commentary:
;;; Code:
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)

  (if (display-graphic-p)
      (load-theme 'doom-acario-light t)
    (load-theme 'doom-badger t))

  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

(defvar z/font-size 18)
(defvar z/font-iosevka
      (font-spec
       :family "Iosevka"
       :size z/font-size))
(defvar z/font-iosevka-extended
      (font-spec
       :family "Iosevka"
       :size z/font-size
       :width 'expanded))
(set-frame-font z/font-iosevka)

;; (global-display-line-numbers-mode)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)
(global-hl-line-mode 1)

(setq display-fill-column-indicator-column 80)
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)
(add-hook 'text-mode-hook 'display-fill-column-indicator-mode)

(if (display-graphic-p)
    (progn
      (pixel-scroll-mode 1)
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))


(provide 'appearance)
;;; appearance.el ends here
