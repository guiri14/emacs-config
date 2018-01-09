(defun open-config ()
  (interactive)
  (find-file user-init-file))

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq x-select-enable-clipboard t)
(setq global-linium-mode t)

(setq delete-old-versions t)
(setq ring-bell-function 'ignore)
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic Mode." t)
(add-to-list 'auto-mode-alist '("\\.vb\\'" . visual-basic-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (atom-one-dark)))
 '(custom-safe-themes
   (quote
    ("a4c9e536d86666d4494ef7f43c84807162d9bd29b0dfd39bdf2c3d845dcc7b2e" "59171e7f5270c0f8c28721bb96ae56d35f38a0d86da35eab4001aebbd99271a8" default)))
 '(global-linum-mode t)
 '(line-number-mode nil)
 '(package-selected-packages
   (quote
    (resize-window intero haskell-mode atom-one-dark-theme csharp-mode helm-projectile projectile company web-mode paredit cider s helm evil))))
 '(custom-enabled-themes (quote (atom-one-dark-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-install-selected-packages)
;; Set default font
(set-face-attribute 'default nil
                    :family "Consolas"
                    :height 140
                    :weight 'normal
                    :width 'normal)

;; Activating  user packages
(require 'evil)
(evil-mode 1)

(require 'helm)
(require 'helm-config)

(projectile-global-mode)
(helm-projectile-on)
(global-company-mode)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "C-SPC") 'company-complete)
(global-set-key (kbd "C-q") 'kill-this-buffer)

(define-key helm-map (kbd "C-j") 'helm-next-line)
(define-key helm-map (kbd "C-k") 'helm-previous-line)

;; Unbind the two emacs movement keys
(define-key helm-map (kbd "C-n") nil)
(define-key helm-map (kbd "C-p") nil)
