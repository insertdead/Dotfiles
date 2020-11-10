;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
;;
;; Increase garbage collection threshold to (hopefully) decrease load time
(setq gc-cons-threshold 50000000)

(add-hook 'emacs-startup-hook 'my/set-gc-threshold)
(defun my/set-gc-threshold ()
  "Reset `gc-cons-threshold' to its default value."
  (setq gc-cons-threshold 800000))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Madsci"
      user-mail-address "Madsci@outlook.com")

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-nord)
(setq doom-variable-pitch-font (font-spec :family "Ubuntu Nerd Font" :size 15)
      doom-big-font (font-spec :family "Ubuntu Nerd Font" :size 24))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org/")
(require `org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)
;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;;mu4e get mail
(setq smtpmail-smtp-service 587)
(setq mu4e-get-mail-command "mbsync -a"
      ;;mu4e-html2text-command "w3m -T text/html" ;;using default mu4e shr2text
      mu4e-view-prefer-html t
      mu4e-update-interval 180
      mu4e-headers-auto-update t
      mu4e-compose-signature-auto-include nil
      mu4e-compose-format-flowed t)
;; view selected message in browser, no signin, just html mail
;;(add-to-list `mu4e-view-actions
;;             '("ViewInBrowser" . mu4e-action-view-in-browser) t)
;; enable inline images
(setq mu4e-view-show-images t)
;; dont save messages to sent messages, imap does this already
(setq mu4e-sent-messages-behavior `delete)
(add-hook `mu4e-view-mode-hook `visual-line-mode)
;; every new email gets its own frame
(setq mu4e-compose-in-new-frame t)
;; smtpmail settings
;;mu4e setup for multiple accounts & etc
(setq mu4e-sent-folder "/madsci-outlook/sent"
      mu4e-drafts-folder "/madsci-outlook/drafts"
      user-mail-address "madsci@outlook.com"
      smtpmail-default-smtp-server "smtp.office365.com"
      smtpmail-local-domain "madsci@outlook.com"
      smtpmail-smtp-server "smtp.office365.com"
      smtpmail-stream-type `starttls
      smtpmail-smtpservices 25)
(defvar my-mu4e-account-alist
  `(("madsci"
     (mu4e-sent-folder "/madsci-outlook/sent")
     (mu4e-drafts-folder "/madsci-outlook/drafts")
     (user-mail-address "madsci@outlook.com")
     (smtpmail-default-smtp-server "smtp.office365.com")
     (smtpmail-local-domain "madsci@outlook.com")
     (smtpmail-smtp-server "smtp.office365.com")
     (smtpmail-stream-type `starttls)
     (smtpmail-smtpservices 25))
    `(("gmail"
     (mu4e-sent-folder "/gmail/\[gmail\].sent")
     (mu4e-drafts-folder "/gmail/\[gmail\].drafts")
     (user-mail-address "madsci483@gmail.com")
     (smtpmail-default-smtp-server "smtp.gmail.com")
     (smtpmail-local-domain "madsci483@gmail.com")
     (smtpmail-smtp-server "smtp.gmail.com")
     (smtpmail-stream-type `starttls)
     (smtpmail-smtpservices 25)))))
;;
;; Extra Keybindings
;;(map! :after treemacs
;;      :map `treemacs
;;      :n "<SPC> o o" `treemacs)
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
;;Flyspell stuff w/ switching between dicts
(with-eval-after-load "ispell" (setq ispell-program-name "ispell")
                      (setq ispell-dictionary"en_CA")
                      (setq ispell-alternate-dictionary "fr_FR"))
;;
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
