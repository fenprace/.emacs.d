;;; packages -- Summary

;;; Commentary:

;;; Code:
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(require 'use-package)
(setq use-package-always-ensure t)

(use-package evil-leader
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key "SPC" 'helm-M-x)
  (evil-leader/set-key "b" 'helm-buffer-list)
  (evil-leader/set-key "f" 'helm-projectile-rg)
  (evil-leader/set-key "." 'lsp-execute-code-action)
  (evil-leader/set-key "/" 'comment-region)
  (global-evil-leader-mode))

(use-package evil
  :after (:all evil-leader)
  :config
  (evil-mode 1))

(use-package highlight-indent-guides
  :hook (prog-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method
	(if (display-graphic-p) 'bitmap 'character)))

(use-package magit)

(use-package projectile
  :config
  (setq projectile-cache-file (expand-file-name ".cache/projectile.cache" user-emacs-directory))
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map))

(use-package helm-rg)
(use-package helm-projectile
  :if (functionp 'helm)
  :config
  (helm-projectile-on))
(use-package helm
  :bind
  (("M-x" . helm-M-x)
   ("C-x C-f" . helm-find-files))
  :config
  (helm-mode 1))

(use-package doom-themes
  :ensure t
  :config
  (if (display-graphic-p)
      (load-theme 'doom-one-light t)
    (progn
      (xterm-mouse-mode 1)
      (load-theme 'doom-1337 t)))

  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

(use-package company
  :hook (after-init . global-company-mode)
  :config
  (setq company-tooltip-align-annotations t ; 注释贴右侧对齐
        company-tooltip-limit 10            ; 菜单里可选项数量
        company-show-numbers t              ; 显示编号（然后可以用 M-数字 快速选定某一项）
        company-idle-delay .2               ; 延时多少秒后弹出
        company-minimum-prefix-length 1     ; 至少几个字符后开始补全
        ))

(use-package flycheck
  :init
  (setq flycheck-emacs-lisp-load-path 'inherit)
  :config
  (global-flycheck-mode))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;;; LSP
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (
	 ;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	 (typescript-mode . lsp-deferred)
         (js-mode . lsp-deferred)
	 (web-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package which-key
    :config
    (which-key-mode))

;;; Treemacs
(use-package treemacs
  :config
  (evil-leader/set-key "t" 'treemacs))
(use-package treemacs-evil)
(use-package treemacs-projectile)

;;; Yasnippet
(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :after (yasnippet))

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package typescript-mode)

(use-package yaml-mode)
(use-package json-mode)

(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode)))

(use-package prettier-js
  :hook ((js-mode . prettier-js-mode)
	 (typescript-mode . prettier-js-mode)
	 (web-mode . prettier-js-mode)))

(provide 'packages)
;;; packages.el ends here

