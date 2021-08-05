;;; helm-config.el -- helm configurations

;;; Commentary:

;;; Code:

(use-package helm-rg)
(use-package helm-projectile
  :if (functionp 'helm)
  :config
  (helm-projectile-on))

(defun helm-or-evil-escape ()
  "Escape from anything."
  (interactive)
  (cond ((minibuffer-window-active-p (minibuffer-window))
         ;; quit the minibuffer if open.
         (abort-recursive-edit))
        ;; Run all escape hooks. If any returns non-nil, then stop there.
        ;; ((cl-find-if #'funcall doom-escape-hook))
        ;; don't abort macros
        ((or defining-kbd-macro executing-kbd-macro) nil)
        ;; Back to the default
        ((keyboard-quit))))

(use-package helm
  :bind
  (("M-x" . helm-M-x)
   ("C-x C-f" . helm-find-files))
  :config
  (global-set-key [escape] #'helm-or-evil-escape)
  (helm-mode 1))

(use-package helm-lsp :commands helm-lsp-workspace-symbol)

(provide 'helm-config)
;;; helm-config.el ends here
